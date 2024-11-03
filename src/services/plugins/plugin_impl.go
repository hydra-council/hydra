package plugins

import (
	"connectrpc.com/connect"
	"context"
	"fmt"
	PluginTypesV1 "hydra/generated/types/plugin/v1"
	"hydra/plugin_manager"
)

type PluginServer struct {
	PluginManager *plugin_manager.PluginManager
}

func (ps *PluginServer) InstallRepo(ctx context.Context, req *connect.Request[PluginTypesV1.InstallRepoRequest]) (*connect.Response[PluginTypesV1.InstallRepoResponse], error) {
	url := req.Msg.GetRepoJsonUrl()
	if url == "" {
		return nil, fmt.Errorf("repo url is empty")
	}

	err := ps.PluginManager.SavePluginRepo(url)
	if err != nil {
		return nil, err
	}

	return &connect.Response[PluginTypesV1.InstallRepoResponse]{}, nil
}

func (ps *PluginServer) UninstallRepo(ctx context.Context, req *connect.Request[PluginTypesV1.RepoRequest]) (*connect.Response[PluginTypesV1.RepoResponse], error) {
	return &connect.Response[PluginTypesV1.RepoResponse]{}, nil
}

func (ps *PluginServer) UpdateRepo(ctx context.Context, req *connect.Request[PluginTypesV1.RepoRequest]) (*connect.Response[PluginTypesV1.RepoResponse], error) {
	return &connect.Response[PluginTypesV1.RepoResponse]{}, nil

}

func (ps *PluginServer) ListRepos(_ context.Context, _ *connect.Request[PluginTypesV1.ListRepoRequest]) (*connect.Response[PluginTypesV1.ListRepoResponse], error) {
	repos, err := ps.PluginManager.ListPluginRepos()
	if err != nil {
		return nil, err
	}

	var allResults []*PluginTypesV1.ExtensionRepo
	for _, repo := range repos {
		allResults = append(
			allResults,
			&PluginTypesV1.ExtensionRepo{
				Id:              int64(repo.ID),
				RepoName:        repo.RepoName,
				RepoUrl:         repo.RepoURL,
				JsonRepoUrl:     repo.JSONRepoURL,
				Version:         repo.Version,
				ManifestVersion: int64(repo.RepoManifestVersion),
			})
	}

	return connect.NewResponse(&PluginTypesV1.ListRepoResponse{Repos: allResults}), nil
}

func (ps *PluginServer) InstallExtension(ctx context.Context, req *connect.Request[PluginTypesV1.ExtensionRequest]) (*connect.Response[PluginTypesV1.ExtensionResponse], error) {
	id := req.Msg.GetId()
	err := ps.PluginManager.InstallPlugin(uint(id))
	if err != nil {
		return nil, err
	}

	return &connect.Response[PluginTypesV1.ExtensionResponse]{}, nil
}
func (ps *PluginServer) UninstallExtension(ctx context.Context, req *connect.Request[PluginTypesV1.ExtensionRequest]) (*connect.Response[PluginTypesV1.ExtensionResponse], error) {
	return &connect.Response[PluginTypesV1.ExtensionResponse]{}, nil

}
func (ps *PluginServer) UpdateExtension(ctx context.Context, req *connect.Request[PluginTypesV1.ExtensionRequest]) (*connect.Response[PluginTypesV1.ExtensionResponse], error) {
	return &connect.Response[PluginTypesV1.ExtensionResponse]{}, nil

}

func (ps *PluginServer) ListExtensions(ctx context.Context, req *connect.Request[PluginTypesV1.ListExtensionRequest]) (*connect.Response[PluginTypesV1.ListExtensionResponse], error) {
	repos, err := ps.PluginManager.ListPlugins()
	if err != nil {
		return nil, err
	}

	var allResults []*PluginTypesV1.Extension
	for _, repo := range repos {
		allResults = append(
			allResults,
			&PluginTypesV1.Extension{
				Id:              int64(repo.ID),
				ExtensionName:   repo.DisplayName,
				ManifestVersion: int64(repo.ManifestVersion),
				Version:         repo.ExtensionVersion,
				MediaType:       repo.MediaType,
				RepoUrl:         repo.RepoURL,
				ScriptUrl:       repo.ScriptURL,
				MetaDataUrl:     repo.MetaDataURL,
			})
	}

	return connect.NewResponse(&PluginTypesV1.ListExtensionResponse{Extensions: allResults}), nil
}
