package plugin_manager

type PluginRepoManifest struct {
	RepoName               string   `json:"repoName"`
	RepoURL                string   `json:"repoUrl"`
	JSONRepoURL            string   `json:"jsonRepoUrl"`
	Version                string   `json:"version"`
	ManifestVersion        int      `json:"manifest_version"`
	ExtensionsMetaDataURLs []string `json:"extensionsMetaDataUrls"`
}

type PluginManifest struct {
	Name            string `json:"name"`
	ManifestVersion int    `json:"manifest_version"`
	Version         string `json:"version"`
	MediaType       string `json:"media_type"`
	RepoURL         string `json:"repoUrl"`
	ScriptURL       string `json:"scriptUrl"`
	MetaDataURL     string `json:"metaDataUrl"`
}
