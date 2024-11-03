package services

import (
	pluginClient "hydra/generated/plugin/v1/v1connect"
	"hydra/plugin_manager"
	"hydra/services/plugins"
	"net/http"
)

func SetupPaths(pluginManager *plugin_manager.PluginManager) *http.ServeMux {
	mux := http.NewServeMux()

	pgSrv := &plugins.PluginServer{PluginManager: pluginManager}
	pgPath, pgHandler := pluginClient.NewPluginServiceHandler(pgSrv)
	mux.Handle(pgPath, pgHandler)

	return mux
}
