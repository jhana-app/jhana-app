package healthcheck

import (
	"context"
	"errors"
	"fmt"
	"net/http"
	"time"

	"go.uber.org/fx"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/cfg"
)

const readHeaderTimeout = 10 * time.Second
const startupDelay = 200 * time.Millisecond

type HealthCheck struct {
	config cfg.HealthCheck
	logger *zap.Logger
	mux    *http.ServeMux
	server *http.Server
}

// NewServer creates new healthcheck http Server.
func newHealthCheck(
	lc fx.Lifecycle,
	logger *zap.Logger,
) *HealthCheck {
	mux := http.NewServeMux()

	mux.HandleFunc("/_health/liveness", func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte("OK"))
	})

	mux.HandleFunc("/_health/readiness", func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte("OK"))
	})

	healthCheck := &HealthCheck{
		logger: logger,
		mux:    mux,
	}

	lc.Append(fx.Hook{
		OnStart: healthCheck.start,
		OnStop:  healthCheck.stop,
	})

	return healthCheck
}

func (h *HealthCheck) Init(config cfg.HealthCheck) {
	h.config = config

	if !h.config.Enabled {
		return
	}

	h.server = &http.Server{
		Addr:              config.Addr(),
		Handler:           h.mux,
		ReadHeaderTimeout: readHeaderTimeout,
	}
}

func (h *HealthCheck) start(ctx context.Context) error {
	if !h.config.Enabled {
		return nil
	}

	errCh := make(chan error, 1)

	go func(ch chan<- error) {
		defer func() {
			if e := recover(); e != nil {
				err, ok := e.(error)
				if !ok {
					err = fmt.Errorf("%v", e)
				}
				h.logger.Error("Panic in healthcheck", zap.Error(err))

				select {
				case ch <- err:
				default:
				}
			}
		}()

		err := h.server.ListenAndServe()
		if err != nil && !errors.Is(err, http.ErrServerClosed) {
			h.logger.Error("Error while starting healthcheck HTTP server", zap.Error(err))
		}

		select {
		case ch <- err:
		default:
		}
	}(errCh)

	select {
	case err := <-errCh:
		h.logger.Error("Failed to listen healthcheck", zap.Error(err))
		return err
	case <-time.After(startupDelay):
		h.logger.Info("Healthcheck http server started", zap.Int("port", h.config.Port))
		return nil
	case <-ctx.Done():
		return h.stop(ctx)
	}
}

func (h *HealthCheck) stop(ctx context.Context) error {
	if !h.config.Enabled {
		return nil
	}

	if err := h.server.Shutdown(ctx); err != nil {
		h.logger.Error("Shutdown healthcheck HTTP Server", zap.Error(err))
	}

	return nil
}
