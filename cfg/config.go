package cfg

import (
	"context"
	"fmt"
	"os"

	"github.com/joho/godotenv"
	"github.com/sethvargo/go-envconfig"
	"go.uber.org/fx"
)

const localEnvFile = ".env.local"

type Config struct {
	fx.Out

	Environment `env:"ENVIRONMENT,default=development"`
	Version

	DB       `env:",prefix=DB_"`
	Discord  `env:",prefix=DISCORD_"`
	Firebase `env:",prefix=FIREBASE_"`
	HTTP     `env:",prefix=HTTP_"`
	Logger   `env:",prefix=LOGGER_"`
	Auth     `env:",prefix=AUTH_"`
}

func New() (Config, error) {
	var (
		ctx = context.Background()
		cfg Config
	)

	if err := loadFromEnvFile(); err != nil {
		return cfg, err
	}

	l := envconfig.PrefixLookuper("JHANA_", envconfig.OsLookuper())
	if err := envconfig.ProcessWith(ctx, &envconfig.Config{
		Target:   &cfg,
		Lookuper: l,
	}); err != nil {
		return cfg, err
	}

	cfg.Version = MustGetVersion("unknown")

	return cfg, nil
}

func loadFromEnvFile() error {
	configFile := os.Getenv("CONFIG")

	if configFile == "" {
		configFile = localEnvFile
		if _, err := os.Stat(configFile); os.IsNotExist(err) {
			return nil
		}
	} else if _, err := os.Stat(configFile); os.IsNotExist(err) {
		return fmt.Errorf("config file '%s' is not found", configFile)
	}

	if err := godotenv.Load(configFile); err != nil {
		return err
	}

	return nil
}
