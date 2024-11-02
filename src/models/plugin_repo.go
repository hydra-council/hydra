package models

import (
	"gorm.io/gorm"
	"time"
)

type PluginRepo struct {
	gorm.Model
	RepoName            string
	RepoURL             string
	JSONRepoURL         string `gorm:"unique"`
	Version             string
	RepoManifestVersion int
	CreatedAt           time.Time
}
