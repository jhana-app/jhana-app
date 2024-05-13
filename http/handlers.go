package http

import (
	"net/http"

	"entgo.io/contrib/entgql"
	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/handler/debug"
	"github.com/99designs/gqlgen/graphql/playground"

	"github.com/jhana-app/jhana-app/gql"
	"github.com/jhana-app/jhana-app/http/middleware"
)

func (s *Server) handlers() http.Handler {
	mux := http.NewServeMux()

	srv := handler.NewDefaultServer(gql.NewSchema(s.client, s.contentProgress, s.discord, s.lessonProgress, s.logger, s.authSvc))
	srv.Use(entgql.Transactioner{TxOpener: s.client})
	if s.config.GraphqlDebug {
		srv.Use(&debug.Tracer{})
	}

	mux.Handle(
		"/api/graphql",
		middleware.DataLoaderMiddleware(s.dataloader)(
			middleware.Authenticator(s.authSvc, s.logger)(
				srv,
			),
		),
	)

	if s.config.GraphiqlEnabled {
		mux.HandleFunc("/api/graphiql", playground.Handler("Jhanas", "/api/graphql"))
	}

	mux.HandleFunc("/", func(writer http.ResponseWriter, req *http.Request) {
		http.Redirect(writer, req, s.config.WebsiteURL, http.StatusTemporaryRedirect)
	})

	return mux
}
