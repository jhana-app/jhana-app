package log

import (
	"context"
	"fmt"

	"github.com/getsentry/sentry-go"
	"go.uber.org/fx"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/cfg"
)

func newLogger(lc fx.Lifecycle, environment cfg.Environment, config cfg.Logger) (*zap.Logger, error) {
	loggerConfig, err := newConfig(environment, config)
	if err != nil {
		return nil, fmt.Errorf("failed to build logger config: %w", err)
	}

	logger, err := loggerConfig.Build()
	if err != nil {
		return nil, fmt.Errorf("failed to initialize logger: %w", err)
	}
	defer func() {
		_ = logger.Sync()
	}()

	if config.SentryDsn != "" {
		sentryClient, sentryErr := sentry.NewClient(sentry.ClientOptions{
			Dsn: config.SentryDsn,
		})
		if sentryErr != nil {
			return nil, fmt.Errorf("failed to initialize sentry client: %w", sentryErr)
		}
		var loggerErr error
		logger, loggerErr = modifyToSentryLogger(logger, sentryClient)
		if loggerErr != nil {
			return nil, fmt.Errorf("failed to init sentry logger: %w", loggerErr)
		}

		lc.Append(fx.Hook{
			OnStop: func(ctx context.Context) error {
				return logger.Sync()
			},
		})
	}

	return logger, nil
}
