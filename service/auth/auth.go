package auth

import (
	"context"
	"fmt"

	fbAuth "firebase.google.com/go/v4/auth"

	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/pkg/hash"
)

var (
	ErrTokenExpired = fmt.Errorf("expired token")
	ErrTokenInvalid = fmt.Errorf("invalid token")

	ErrAuthFailed      = fmt.Errorf("auth failed")
	ErrWrongAuthMethod = fmt.Errorf("wrong auth method")
	ErrUserNotFound    = fmt.Errorf("user not found")

	ErrUserExists = fmt.Errorf("user already exists")
)

type Auth interface {
	GetUserByToken(ctx context.Context, token string) (*ent.User, error)
	GenerateToken(ctx context.Context, user *ent.User) (*TokenPair, error)
	RefreshToken(ctx context.Context, refreshToken string) (*TokenPair, error)
	SignInWithEmailAndPassword(ctx context.Context, email, password string) (*ent.User, error)
	SignUpWithEmailAndPassword(ctx context.Context, email, password string, name *string) (*ent.User, error)
	SignOut(ctx context.Context, token string) error
}

type TokenPair struct {
	AccessToken  string
	RefreshToken string
}

func newAuth(ent *ent.Client, fbAuth *fbAuth.Client, hash hash.HasherComparer, authCfg cfg.Auth) Auth {
	if authCfg.Method == cfg.AuthMethodFirebase {
		return &firebaseAuth{
			ent:    ent,
			fbAuth: fbAuth,
		}
	} else {
		return &localAuth{
			ent:     ent,
			hash:    hash,
			authCfg: authCfg,
		}
	}
}
