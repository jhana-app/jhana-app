package db

import (
	"fmt"

	_ "github.com/jackc/pgx/v4/stdlib" // PostgreSQL database driver
	"github.com/jmoiron/sqlx"
	"go.uber.org/fx"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/cfg"
)

func newDB(lc fx.Lifecycle, config cfg.DB, logger *zap.Logger) (*sqlx.DB, error) {
	db, err := New(&config)
	if err != nil {
		return nil, err
	}

	return db, nil
}

func New(config *cfg.DB) (*sqlx.DB, error) {
	// connect to database
	driver := config.Driver
	if config.Driver == "postgres" || config.Driver == "postgresql" {
		driver = "pgx"
	}

	db, err := sqlx.Connect(driver, config.URL)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to database: %w", err)
	}

	// setup database connections limits
	db.SetMaxOpenConns(config.MaxOpenConns)
	db.SetMaxIdleConns(config.MaxIdleConns)
	db.SetConnMaxLifetime(config.ConnMaxLifetime)

	if err = db.Ping(); err != nil {
		return nil, fmt.Errorf("failed to ping database: %w", err)
	}

	return db, nil
}
