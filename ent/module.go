package ent

import (
	"entgo.io/ent/dialect"
	entsql "entgo.io/ent/dialect/sql"
	"github.com/jmoiron/sqlx"
	"go.uber.org/fx"

	"github.com/jhana-app/jhana-app/cfg"
)

var Module = fx.Options(
	fx.Provide(newClient),
)

func newClient(db *sqlx.DB, dbCfg cfg.DB) *Client {
	driver := dialect.Postgres
	if dbCfg.Driver == "sqlite3" {
		driver = dialect.SQLite
	}

	opts := []Option{
		Driver(entsql.OpenDB(driver, db.DB)),
	}
	if dbCfg.Debug {
		opts = append(opts, Debug())
	}
	return NewClient(opts...)
}
