package middleware

import (
	"encoding/json"
	"errors"
	"fmt"
	"net/http"

	"github.com/vektah/gqlparser/v2/gqlerror"

	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/internal/authctx"
	"github.com/jhana-app/jhana-app/service/auth"
)

const (
	bearer           = "Bearer "
	gqlInternalError = `{"message": "Internal server error"}`
)

var errAuthHeaderNotFound = fmt.Errorf("authorization header not found")

func authorizationFromHeader(req *http.Request) (string, error) {
	header := req.Header.Get("Authorization")
	if header == "" {
		return "", errAuthHeaderNotFound
	}

	l := len(bearer)
	if len(header) > l && header[:l] == bearer {
		return header[l:], nil
	}

	return "", fmt.Errorf("authorization header format must be 'Bearer {token}'")
}

func Authenticator(authSvc auth.Auth, logger *zap.Logger) func(handler http.Handler) http.Handler {
	gqlError := func(err error) string {
		errRaw, err := json.Marshal(gqlerror.Errorf(err.Error()))
		if err != nil {
			logger.Error("Failed to marshal error", zap.Error(err))
			return ""
		}

		return string(errRaw)
	}

	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			token, err := authorizationFromHeader(r)
			if errors.Is(err, errAuthHeaderNotFound) {
				next.ServeHTTP(w, r)
				return
			} else if err != nil {
				logger.Error("Failed to get auth header", zap.Error(err))
				gqlErrRaw := gqlError(err)
				if gqlErrRaw == "" {
					http.Error(w, gqlInternalError, http.StatusInternalServerError)
				} else {
					http.Error(w, gqlErrRaw, http.StatusBadRequest)
				}
				return
			}

			ctx := r.Context()

			user, err := authSvc.GetUserByToken(ctx, token)
			if err != nil {
				if errors.Is(err, auth.ErrTokenInvalid) || errors.Is(err, auth.ErrTokenExpired) {
					gqlErrRaw := gqlError(err)
					if gqlErrRaw == "" {
						http.Error(w, gqlInternalError, http.StatusInternalServerError)
					} else {
						http.Error(w, gqlErrRaw, http.StatusUnauthorized)
					}
				} else {
					logger.Error("Failed to get user by token", zap.Error(err))
					gqlErrRaw := gqlError(err)
					if gqlErrRaw == "" {
						http.Error(w, gqlInternalError, http.StatusInternalServerError)
					} else {
						http.Error(w, gqlErrRaw, http.StatusBadRequest)
					}
				}
				return
			}

			if user != nil {
				logger.Debug("User authenticated", zap.Int64("user_id", user.ID.ID), zap.Stringp("firebase_uid", user.FirebaseUid))
				r = r.WithContext(authctx.WithUser(ctx, user))
			}

			next.ServeHTTP(w, r)
		})
	}
}
