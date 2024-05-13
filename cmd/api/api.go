package api

import (
	"github.com/spf13/cobra"
	"go.uber.org/fx"

	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/http"
	"github.com/jhana-app/jhana-app/http/healthcheck"
	"github.com/jhana-app/jhana-app/internal/app"
)

func Command() *cobra.Command {
	return &cobra.Command{
		Use:   "api",
		Short: "run api server",

		RunE: func(_ *cobra.Command, _ []string) error {
			app.New(
				healthcheck.Module,
				http.Module,
				fx.Invoke(func(*http.Server) {}),
				fx.Invoke(func(config cfg.HTTP, healthCheck *healthcheck.HealthCheck) {
					healthCheck.Init(config.HealthCheck)
				}),
			).Run()

			return nil
		},
	}
}
