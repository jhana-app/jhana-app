package http

import (
	"context"
	"errors"
	"net/http"

	fbAuth "firebase.google.com/go/v4/auth"
	"go.uber.org/fx"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders"
	"github.com/jhana-app/jhana-app/pkg/discord"
	"github.com/jhana-app/jhana-app/service/auth"
	"github.com/jhana-app/jhana-app/service/contentprogress"
	"github.com/jhana-app/jhana-app/service/lessonprogress"
)

type Server struct {
	authSvc         auth.Auth
	client          *ent.Client
	config          cfg.HTTP
	dataloader      dataloaders.Dataloader
	discord         discord.Client
	environment     cfg.Environment
	fbAuth          *fbAuth.Client
	httpd           *http.Server
	contentProgress contentprogress.ContentProgress
	lessonProgress  lessonprogress.LessonProgress
	logger          *zap.Logger
}

func newServer(
	lc fx.Lifecycle,
	authSvc auth.Auth,
	client *ent.Client,
	config cfg.HTTP,
	dataloader dataloaders.Dataloader,
	discord discord.Client,
	environment cfg.Environment,
	fbAuth *fbAuth.Client,
	contentProgress contentprogress.ContentProgress,
	lessonProgress lessonprogress.LessonProgress,
	logger *zap.Logger,
) (*Server, error) {
	s := &Server{
		authSvc:         authSvc,
		client:          client,
		config:          config,
		dataloader:      dataloader,
		discord:         discord,
		environment:     environment,
		fbAuth:          fbAuth,
		contentProgress: contentProgress,
		lessonProgress:  lessonProgress,
		logger:          logger,
	}

	handlers := s.handlers()

	s.httpd = &http.Server{
		Addr:         config.Addr(),
		Handler:      handlers,
		ReadTimeout:  config.ReadTimeout,
		WriteTimeout: config.WriteTimeout,
	}

	lc.Append(fx.Hook{
		OnStart: s.start,
		OnStop:  s.stop,
	})

	return s, nil
}

func (s *Server) start(_ context.Context) error {
	s.logger.Info("Starting HTTP server", zap.String("addr", s.config.Addr()))

	go func() {
		if err := s.httpd.ListenAndServe(); err != nil {
			if !errors.Is(err, http.ErrServerClosed) {
				s.logger.Error("Error starting HTTP server", zap.Error(err))
			}
		}
	}()

	return nil
}

func (s *Server) stop(ctx context.Context) error {
	s.logger.Info("Shutdown HTTP server")

	if err := s.httpd.Shutdown(ctx); err != nil {
		s.logger.Error("Error stopping HTTP server", zap.Error(err))
	}

	return nil
}
