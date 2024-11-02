package main

import (
	"errors"
	"github.com/rs/zerolog/log"
	"github.com/spf13/viper"
	"os"
	"path/filepath"
)

func InitConfig() {
	viper.SetConfigName("config")
	viper.SetConfigType("json")
	viper.SetEnvPrefix("hydra")
	viper.AutomaticEnv()

	isDocker := viper.Get("IS_DOCKER")

	configDir := ""
	if isDocker == "" {
		log.Info().Msgf("Leviathan is running in dev machine")
		configDir = "./appdata" // look for config in the working directory, when developing
	} else {
		log.Info().Msgf("Leviathan is running in docker")
		configDir = "/app/appdata" // look in /app/appdata when running in docker
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
				return
			}
		} else {
			log.Fatal().Err(err).Msgf("Something went wrong while reading config file")
		}
	} else {
		log.Info().Msgf("Successfully loaded config file from %s", viper.ConfigFileUsed())
	}
}

func setupDefaultDirs() {

}

// setConstEnvs defines envs that are not supposed
// to be modified or put in the config file
func setConstEnvs() {
	if viper.Get("IS_DOCKER") != "" {
		viper.SetDefault("appdata", "../appdata")
		viper.SetDefault("database_path", "")
	} else {
		viper.SetDefault("appdata", "/data/appdata")
		viper.SetDefault("database_path", "")
	}

}

func createDefaultConfigFile(configPath string) {
	filename := "config.toml"
	finalPath := filepath.Join(configPath, filename)
	_, err := os.Create(finalPath)
	if err != nil {
		log.Fatal().Err(err).Msgf("Failed to create default config file at %s", finalPath)
	}
	log.Info().Msgf("Created default config file at %s", finalPath)

	createDefaultOptions()
	err = viper.WriteConfigAs(finalPath)
	if err != nil {
		log.Error().Err(err).Msgf("Failed to write default config file at %s", finalPath)
		return
	}
}

func createDefaultOptions() {
	// todo figure out config options
	viper.SetDefault("clients.enable_local_docker", true)
}

func GetClientList() {

}
