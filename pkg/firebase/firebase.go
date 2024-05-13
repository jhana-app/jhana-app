package firebase

import (
	"context"

	firebase "firebase.google.com/go/v4"
	"go.uber.org/zap"
	"google.golang.org/api/option"

	"github.com/jhana-app/jhana-app/cfg"
)

func newFirebase(config cfg.Firebase, logger *zap.Logger) (*firebase.App, error) {
	if !config.Enabled {
		return nil, nil
	}
	firebaseConfig := &firebase.Config{
		ProjectID: config.ProjectID,
	}

	firebaseOptions := []option.ClientOption{}
	if config.CredentialsFile != "" {
		firebaseOptions = append(firebaseOptions, option.WithCredentialsFile(config.CredentialsFile))
	}

	app, err := firebase.NewApp(context.Background(), firebaseConfig, firebaseOptions...)
	if err != nil {
		logger.Error("error initializing firebase client", zap.Error(err))
	}

	return app, nil
}
