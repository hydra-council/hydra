package main

import (
	"connectrpc.com/connect"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"hydra/generated/manga/v1/v1connect"
	pm "hydra/plugin_manager"
	"net/http"
	"os"
	"time"
)

func main() {
	httpClient := &http.Client{Timeout: 30 * time.Second}
	database := initDatabase()

	_ = pm.PluginManager{
		Database: database,
		Client:   httpClient,
	}

	// todo add file writer
	log.Logger = log.Output(zerolog.MultiLevelWriter(os.Stderr))

	// todo config
	//config.InitConfig()

	grpcH2Client := newInsecureClient()
	// todo load from config
	mangaServiceUrl := "http://0.0.0.0:55001"

	_ = v1connect.NewMangaServiceClient(
		grpcH2Client,
		mangaServiceUrl,
		connect.WithGRPC(),
	)
}
