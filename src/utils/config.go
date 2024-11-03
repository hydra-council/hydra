package utils

import (
	"errors"
	"github.com/rs/zerolog/log"
	"github.com/spf13/viper"
	"os"
	"path/filepath"
)

func InitConfig() error {
	viper.SetConfigName("config")
	viper.SetConfigType("json")
	viper.SetEnvPrefix("hydra")
	viper.AutomaticEnv()

	isDocker := viper.GetBool("IS_DOCKER")
	configDir := ""
	if !isDocker {
		log.Info().Msgf("Not running in docker")
		configDir = "../appdata" // look for config in the working directory, when developing
	} else {
		log.Info().Msgf("running in docker")
		configDir = "/var/appdata"
	}
	err := os.MkdirAll(configDir, 0640)
	if err != nil {
		log.Fatal().Err(err).Msg("Failed to create config directory")
	}

	viper.AddConfigPath(configDir)

	if err := viper.ReadInConfig(); err != nil {
		var configFileNotFoundError viper.ConfigFileNotFoundError
		if errors.As(err, &configFileNotFoundError) {
			log.Warn().Msgf("Config file not found, creating default config in %s", configDir)
			createDefaultConfigFile(configDir)
			err := viper.ReadInConfig()
			if err != nil {
				log.Fatal().Err(err).Msgf("Config file not found, even after creating a default file in %s", configDir)
			}
		} else {
			log.Fatal().Err(err).Msgf("Something went wrong while reading config file")
		}
	} else {
		log.Info().Msgf("Successfully loaded config file from %s", viper.ConfigFileUsed())
	}

	databasePath := configDir + "/hydra.db"
	pluginDir := configDir + "/plugins"
	logDir := configDir + "/logs"

	err = os.MkdirAll(pluginDir, 0640)
	err = os.MkdirAll(logDir, 0640)
	if err != nil {
		return err
	}

	viper.SetDefault("database_path", databasePath)
	viper.SetDefault("plugin_dir", pluginDir)
	viper.SetDefault("logs", logDir)

	return nil
}

func createDefaultConfigFile(configPath string) {
	filename := "config.json"
	finalPath := filepath.Join(configPath, filename)
	_, err := os.Create(finalPath)
	if err != nil {
		log.Fatal().Err(err).Msgf("Failed to create default config file at %s", finalPath)
	}
	log.Info().Msgf("Created default config file at %s", finalPath)

	err = viper.WriteConfigAs(finalPath)
	if err != nil {
		log.Error().Err(err).Msgf("Failed to write default config file at %s", finalPath)
		return
	}
}
