package main

import (
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"hydra/models"
)

func initDatabase() *gorm.DB {
	const databasePath = "hydra.db"

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
