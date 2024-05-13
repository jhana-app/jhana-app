package cfg

import (
	"time"
)

type DB struct {
	URL             string        `env:"URL"`
	Driver          string        `env:"DRIVER,default=postgres"` // supported: postgres, sqlite
	MaxOpenConns    int           `env:"MAX_OPEN_CONNS,default=32"`
	MaxIdleConns    int           `env:"MAX_IDLE_CONNS,default=16"`
	ConnMaxLifetime time.Duration `env:"CONN_MAX_LIFETIME,default=1h"`

	// debug all SQL queries
	Debug bool `env:"DEBUG,default=false"`
}
