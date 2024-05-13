package gql

import (
	"context"

	"github.com/99designs/gqlgen/graphql"
)

func HasPermission() func(context.Context, interface{}, graphql.Resolver, []string) (interface{}, error) {
	return func(
		ctx context.Context,
		obj interface{},
		next graphql.Resolver,
		permissions []string,
	) (res interface{}, err error) {
		// you can do your thing here for permissions
		return next(ctx)
	}
}
