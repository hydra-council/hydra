package models

import (
	"gorm.io/gorm"
	"time"
)

type Plugin struct {
	gorm.Model
	DisplayName      string
	ManifestVersion  int
	ExtensionVersion string
	MediaType        string
	RepoURL          string
	ScriptURL        string `gorm:"unique"`
	MetaDataURL      string
	ScriptFileURL    string `gorm:"unique"`
	ExtensionRepoID  uint
	ExtensionRepo    PluginRepo `gorm:"constraint:OnDelete:SET NULL"`
	CreatedAt        time.Time
}
