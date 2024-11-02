package plugin_manager

import (
	"encoding/json"
	"fmt"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"gorm.io/gorm"
	"gorm.io/gorm/clause"
	models "hydra/models"
	"io"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"slices"
)

type PluginManager struct {
	Database *gorm.DB
	Client   *http.Client
}

var allowedContentTypes = []string{"application/json", "text/plain; charset=utf-8"}

func (pm *PluginManager) SavePluginRepo(url string) error {
	body, err := pm.DownloadFile(url)
	if err != nil {
		return err
	}

	repo := PluginRepoManifest{}
	if err := json.Unmarshal(body, &repo); err != nil {
		return fmt.Errorf("failed to parse JSON: %v", err)
	}

	dbRepo := models.PluginRepo{
		RepoName:            repo.RepoName,
		RepoURL:             repo.RepoURL,
		JSONRepoURL:         repo.JSONRepoURL,
		Version:             repo.Version,
		RepoManifestVersion: repo.ManifestVersion,
	}

	created := pm.Database.Clauses(clause.OnConflict{
		Columns:   []clause.Column{{Name: "json_repo_url"}},
		DoUpdates: clause.AssignmentColumns([]string{"version", "repo_manifest_version", "repo_name"}),
	}).Create(&dbRepo)

	if created.Error != nil {
		return created.Error
	}

	for _, element := range repo.ExtensionsMetaDataURLs {
		err := pm.SavePlugin(element, dbRepo.ID)
		if err != nil {
			return err
		}
	}

	return nil
}

func (pm *PluginManager) UpdatePluginRepo() {}

func (pm *PluginManager) SavePlugin(url string, repoId uint) error {
	body, err := pm.DownloadFile(url)
	if err != nil {
		return err
	}

	jsonPlugin := PluginManifest{}
	if err := json.Unmarshal(body, &jsonPlugin); err != nil {
		return fmt.Errorf("failed to parse JSON: %v", err)
	}
	var dbPlugin = models.Plugin{
		DisplayName:      jsonPlugin.Name,
		ManifestVersion:  jsonPlugin.ManifestVersion,
		ExtensionVersion: jsonPlugin.Version,
		MediaType:        jsonPlugin.MediaType,
		RepoURL:          jsonPlugin.RepoURL,
		ScriptURL:        jsonPlugin.ScriptURL,
		MetaDataURL:      jsonPlugin.MetaDataURL,
		ScriptFileURL:    "",
	}

	if repoId != 0 {
		// only add repo id if it is from a repo,
		// 0 indicates it has been added without a repo
		dbPlugin.ExtensionRepoID = repoId
	}

	//created := pm.Database.Clauses(clause.OnConflict{
	//	Columns:   []clause.Column{{Name: "json_repo_url"}},
	//	DoUpdates: clause.AssignmentColumns([]string{"version", "repo_manifest_version", "repo_name"}),
	//}).Create(&dbPlugin)

	created := pm.Database.Create(&dbPlugin)
	if created.Error != nil {
		log.Warn().Any("New record", jsonPlugin).Msgf("Waring record probably already exists no updates nessacary")
	}

	return nil
}

func (pm *PluginManager) InstallPlugin(pluginId uint) error {
	var plugin models.Plugin

	pm.Database.Select("script_url", "display_name").First(&plugin, pluginId)
	if pm.Database.Error != nil {
		return fmt.Errorf("could not find plugin with id %d, err: %v", pluginId, pm.Database.Error)
	}

	body, err := pm.DownloadFile(plugin.ScriptURL)
	if err != nil {
		return fmt.Errorf("failed to download plugin file: %v", err)
	}

	// todo get plugin dir from config
	pluginDir := "../plugin"

	// create plugin folder via uuid
	folderId, err := uuid.NewUUID()
	if err != nil {
		return fmt.Errorf("failed to generate plugin UUID: %v", err)
	}

	fullPluginFolder := filepath.Join(pluginDir, folderId.String())
	err = os.MkdirAll(fullPluginFolder, 0640)
	if err != nil {
		return fmt.Errorf("failed to create plugin directory: at %s, err: %v", fullPluginFolder, err)
	}

	// save file with its escaped display name
	fullPluginPath := filepath.Join(fullPluginFolder, url.QueryEscape(plugin.DisplayName))
	// IMP NEVER GIVE EXECUTE PERMISSION
	err = os.WriteFile(fullPluginPath, body, 0640)
	if err != nil {
		return fmt.Errorf("failed to write plugin file to path:%s, err: %v", fullPluginPath, err)
	}

	return nil
}

func (pm *PluginManager) UpdatePlugin() {}

func (pm *PluginManager) DownloadFile(url string) ([]byte, error) {
	// Make the GET request
	resp, err := pm.Client.Get(url)
	if err != nil {
		return nil, fmt.Errorf("failed to make GET request: %v", err)
	}
	defer func(Body io.ReadCloser) {
		err := Body.Close()
		if err != nil {
			log.Error().Err(err).Msg("failed to close response body when downloading plugin repo manifest")
		}
	}(resp.Body)

	// Check if the status code is OK (200)
	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("unexpected status code: %d", resp.StatusCode)
	}

	// check for content type is json or text

	dataType := resp.Header.Get("Content-Type")
	if !slices.Contains(allowedContentTypes, dataType) {
		return nil, fmt.Errorf("unexpected content type: %s, allowed content types are %v", resp.Header.Get("Content-Type"), allowedContentTypes)
	}

	// Read the response body
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, fmt.Errorf("failed to read response body: %v", err)
	}

	return body, nil
}
