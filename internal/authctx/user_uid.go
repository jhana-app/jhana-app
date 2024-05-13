package authctx

import (
	"context"
	"fmt"

	"github.com/jhana-app/jhana-app/ent"
)

type userKey struct{}

func WithUser(ctx context.Context, user *ent.User) context.Context {
	return context.WithValue(ctx, userKey{}, user)
}

// GetUser returns user from the context, that was set by Authenticator middleware.
func GetUser(ctx context.Context) (*ent.User, error) {
	obj := ctx.Value(userKey{})
	if obj == nil {
		return nil, fmt.Errorf("failed to get user UID from the context")
	}

	user, casted := obj.(*ent.User)
	if !casted {
		return nil, fmt.Errorf("failed to cast user UID from the context")
	}

	return user, nil
}

// MustGetUser returns user from the context, that was set by Authenticator middleware.
// Panics if user UID doesn't exist.
func MustGetUser(ctx context.Context) *ent.User {
	user, err := GetUser(ctx)
	if err != nil {
		panic(err)
	}

	return user
}
