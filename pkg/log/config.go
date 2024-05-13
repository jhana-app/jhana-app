package log

import (
	"fmt"

	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"

	"github.com/jhana-app/jhana-app/cfg"
)

func newConfig(environment cfg.Environment, config cfg.Logger) (*zap.Config, error) {
	var zapConfig zap.Config

	if environment.IsProduction() {
		zapConfig = zap.NewProductionConfig()
	} else {
		zapConfig = zap.NewDevelopmentConfig()
		// shorter time in dev env
		zapConfig.EncoderConfig.EncodeTime = zapcore.TimeEncoderOfLayout("15:04:05")
	}

	if config.Level != "" {
		level, err := zap.ParseAtomicLevel(config.Level)
		if err != nil {
			return nil, fmt.Errorf("unknown logger level: %w", err)
		}
		zapConfig.Level = level
	}

	if config.Format != "" {
		zapConfig.Encoding = config.Format
	}

	return &zapConfig, nil
}
