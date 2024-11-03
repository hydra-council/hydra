package main

import (
	"connectrpc.com/connect"
	"context"
	"crypto/tls"
	"fmt"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"github.com/spf13/viper"
	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"hydra/generated/manga/v1/v1connect"
	"hydra/models"
	pm "hydra/plugin_manager"
	"hydra/services"
	"hydra/utils"
	"net"
	"net/http"
	"os"
	"time"
)

func main() {
	// todo add file writer
	log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stderr})

	utils.InitConfig()

	httpClient := &http.Client{Timeout: 30 * time.Second}
	database := initDatabase()

	pluginManager := pm.PluginManager{
		Database: database,
		Client:   httpClient,
	}

	//_, err := pluginManager.ListPluginRepos()
	//if err != nil {
	//	panic(err)
	//}
	//err := pluginManager.SavePluginRepo("https://raw.githubusercontent.com/hydra-council/manga-extensions/refs/heads/main/repo_manifest.json")
	//if err != nil {
	//	panic(err)
	//}
	//
	//err = pluginManager.InstallPlugin(1)
	//if err != nil {
	//	panic(err)
	//}

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

	//plugin, err := cli.LoadPlugin(
	//	context.Background(),
	//	connect.NewRequest(&v1.LoadPluginRequest{PluginPath: "D:\\Dev\\Go\\constellations\\hydra\\plugin\\d59c453a-98ea-11ef-88b1-089df4abb4f0\\manganato.py"}),
	//)

	mux := services.SetupPaths(&pluginManager)

	// todo load from config ???
	port := "9221"
	srvAddr := fmt.Sprintf(":%s", port)
	log.Info().Msgf("Started server on %s", srvAddr)
	err := http.ListenAndServe(
		srvAddr,
		// Use h2c so we can serve HTTP/2 without TLS.
		h2c.NewHandler(mux, &http2.Server{}),
	)
	if err != nil {
		log.Fatal().Err(err).Msgf("Failed to start server on %s", srvAddr)
		return
	}
}

func initDatabase() *gorm.DB {
	databasePath := viper.GetString("database_path")
	if databasePath == "" {
		panic("Database path not set")
	}

	db, err := gorm.Open(sqlite.Open(databasePath), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}

	// Migrate the schema
	err = db.AutoMigrate(&models.Plugin{}, &models.PluginRepo{})
	if err != nil {
		panic("failed to auto migrate database")
	}

	return db
}

// newInsecureClient create a http2 client without tls.
// ref: https://connectrpc.com/docs/go/deployment#h2c
func newInsecureClient() *http.Client {
	return &http.Client{
		Transport: &http2.Transport{
			AllowHTTP: true,
			DialTLSContext: func(ctx context.Context, network, addr string, cfg *tls.Config) (net.Conn, error) {

				// If you're also using this client for non-h2c traffic, you may want
				// to delegate to tls.Dial if the network isn't TCP or the addr isn't
				// in an allowlist.
				return net.Dial(network, addr)
			},
			ReadIdleTimeout: 1 * time.Minute,
			// Don't forget timeouts!
		},
	}
}
