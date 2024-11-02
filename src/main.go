package main

import (
	"connectrpc.com/connect"
	"context"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"hydra/generated/manga/v1/v1connect"
	v1 "hydra/generated/types/plugin/v1"
	pm "hydra/plugin_manager"
	"net/http"
	"os"
	"time"
)

func main() {
	httpClient := &http.Client{Timeout: 30 * time.Second}
	database := initDatabase()

	pluginManager := pm.PluginManager{
		Database: database,
		Client:   httpClient,
	}

	err := pluginManager.SavePluginRepo("https://raw.githubusercontent.com/hydra-council/manga-extensions/refs/heads/main/repo_manifest.json")
	if err != nil {
		panic(err)
	}

	err = pluginManager.InstallPlugin(1)
	if err != nil {
		panic(err)
	}

	// todo add file writer
	log.Logger = log.Output(zerolog.MultiLevelWriter(os.Stderr))

	// todo config
	//config.InitConfig()

	grpcH2Client := newInsecureClient()
	// todo load from config
	mangaServiceUrl := "http://0.0.0.0:55001"

	cli := v1connect.NewMangaServiceClient(
		grpcH2Client,
		mangaServiceUrl,
		connect.WithGRPC(),
	)

	plugin, err := cli.LoadPlugin(
		context.Background(),
		connect.NewRequest(&v1.LoadPluginRequest{PluginPath: "D:\\Dev\\Go\\constellations\\hydra\\plugin\\d59c453a-98ea-11ef-88b1-089df4abb4f0\\manganato.py"}),
	)

	if err != nil {
		panic(err)
	}

	log.Info().Any("plugin", plugin.Msg.GetStatus()).Msg("asasdasdaswd")
}
