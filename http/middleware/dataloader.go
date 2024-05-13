package middleware

import (
	"net/http"

	"github.com/jhana-app/jhana-app/ent/dataloaders"
)

// DataLoaderMiddleware sets up data loaders for every request and drop them after.
func DataLoaderMiddleware(dataloader dataloaders.Dataloader) func(handler http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			ctx := r.Context()
			next.ServeHTTP(w, r.WithContext(dataloaders.WithLoader(ctx, dataloader.Loaders(ctx))))
		})
	}
}
