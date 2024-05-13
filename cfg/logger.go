package cfg

// Logger config.
type Logger struct {
	Level     string `env:"LEVEL"`
	Format    string `env:"FORMAT"`
	SentryDsn string `env:"SENTRY_DSN"`
}
