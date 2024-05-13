package gql

import (
	"github.com/99designs/gqlgen/graphql"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/pkg/discord"
	"github.com/jhana-app/jhana-app/service/auth"
	"github.com/jhana-app/jhana-app/service/contentprogress"
	"github.com/jhana-app/jhana-app/service/lessonprogress"
)

// Resolver is the resolver root.
type Resolver struct {
	client          *ent.Client
	contentProgress contentprogress.ContentProgress
	discord         discord.Client
	lessonProgress  lessonprogress.LessonProgress
	logger          *zap.Logger
	auth            auth.Auth
}

// NewSchema creates a graphql executable schema.
func NewSchema(
	client *ent.Client,
	contentProgress contentprogress.ContentProgress,
	discord discord.Client,
	lessonProgress lessonprogress.LessonProgress,
	logger *zap.Logger,
	auth auth.Auth,
) graphql.ExecutableSchema {
	return NewExecutableSchema(Config{
		Resolvers: &Resolver{
			client:          client,
			contentProgress: contentProgress,
			discord:         discord,
			lessonProgress:  lessonProgress,
			logger:          logger,
			auth:            auth,
		},
		Directives: DirectiveRoot{
			HasPermissions: HasPermission(),
		},
	})
}
