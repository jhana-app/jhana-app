package app

import (
	"fmt"

	"github.com/jmoiron/sqlx"

	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/pkg/db"
)

func DB(configDB *cfg.DB) (*sqlx.DB, error) {
	if configDB == nil {
		config, err := cfg.New()
		if err != nil {
			return nil, fmt.Errorf("failed to get config: %w", err)
		}
		configDB = &config.DB
	}

	dbx, err := db.New(configDB)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to db: %w", err)
	}

	return dbx, nil
}
