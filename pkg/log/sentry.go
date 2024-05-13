package log

import (
	"github.com/TheZeroSlave/zapsentry"
	"github.com/getsentry/sentry-go"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

func modifyToSentryLogger(logger *zap.Logger, client *sentry.Client) (*zap.Logger, error) {
	cfg := zapsentry.Configuration{
		Level: zapcore.WarnLevel, // when to send message to sentry
	}

	core, err := zapsentry.NewCore(cfg, zapsentry.NewSentryClientFromClient(client))
	if err != nil {
		return nil, err
	}

	return zapsentry.AttachCoreToLogger(core, logger), nil
}
