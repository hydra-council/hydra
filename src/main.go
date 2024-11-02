package main

import (
	"connectrpc.com/connect"
	"context"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	v1 "hydra/generated/servers/manga/v1"
	"hydra/generated/servers/manga/v1/v1connect"
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

	//err := pluginManager.SavePluginRepo("https://raw.githubusercontent.com/hydra-council/manga-extensions/refs/heads/main/repo_manifest.json")
	//if err != nil {
	//	panic(err)
	//}

	err := pluginManager.InstallPlugin(1)
	if err != nil {
		panic(err)
	}

	// todo add file writer
	log.Logger = log.Output(zerolog.MultiLevelWriter(os.Stderr))
	//config.InitConfig()

	log.Debug().Any("Asd", database).Msgf("asdasd")
	//log.Println(database)

	httpclient := newInsecureClient()

	client := v1connect.NewMangaServiceClient(
		httpclient,
		"http://0.0.0.0:55001",
		connect.WithGRPC(),
	)
	res, err := client.ListRepos(
		context.Background(),
		connect.NewRequest(&v1.ListRepoRequest{}),
	)
	if err != nil {
		log.Debug().Any("asd", err)
		return
	}

	log.Debug().Any("asdasd", res.Msg.GetRepos())
}
