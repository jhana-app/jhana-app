package auth

import (
	"context"
	"fmt"
	"time"

	"github.com/golang-jwt/jwt/v4"
	"github.com/google/uuid"
	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/authtoken"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/user"
	"github.com/jhana-app/jhana-app/pkg/hash"
	"github.com/mcnijman/go-emailaddress"
)

const (
	// keep refresh tokens for 1 year. (Firebase refresh token is infinite.)
	refreshTokenExpirationDuration = 1 * 365 * 24 * time.Hour
	// retire and issue new refresh token 31 days before it expires.
	refreshTokenRetirementDuration = 31 * 24 * time.Hour
	accessTokenExpirationDuration  = 1 * time.Hour
	accessTokenAudience            = "access"
	refreshTokenAudience           = "refresh"
)

type jwtClaims struct {
	UserID gqlid.UserID `json:"userId"`
	jwt.RegisteredClaims
}

type localAuth struct {
	ent     *ent.Client
	hash    hash.HasherComparer
	authCfg cfg.Auth
}

// RefreshToken implements Auth.
func (a *localAuth) RefreshToken(ctx context.Context, refreshToken string) (*TokenPair, error) {
	newRefreshToken := refreshToken
	claims, err := a.parseToken(refreshToken)
	if err != nil {
		return nil, fmt.Errorf("failed to parse token: %w", err)
	}
	if claims.Audience[0] != refreshTokenAudience {
		return nil, ErrTokenInvalid
	}
	authToken, err := a.ent.AuthToken.Query().Where(authtoken.JwtID(claims.ID)).Only(ctx)
	if err != nil {
		if ent.IsNotFound(err) {
			return nil, ErrTokenInvalid
		}
		return nil, fmt.Errorf("failed to get auth token: %w", err)
	}
	user, err := a.ent.User.Get(ctx, authToken.UserID)
	if err != nil {
		if ent.IsNotFound(err) {
			return nil, ErrUserNotFound
		}
		return nil, fmt.Errorf("failed to get user from db: %w", err)
	}
	accessToken, err := a.generateAccessToken(user)
	if err != nil {
		return nil, fmt.Errorf("failed to generate access token: %w", err)
	}
	if time.Until(authToken.ExpiresAt) < refreshTokenRetirementDuration {
		if err = a.removeRefreshToken(ctx, claims.ID); err != nil {
			return nil, fmt.Errorf("failed to remove an old refresh token: %w", err)
		}
		newRefreshToken, err = a.generateRefreshToken(ctx, user)
		if err != nil {
			return nil, fmt.Errorf("failed to generate a new refresh token: %w", err)
		}
	}

	return &TokenPair{
		AccessToken:  accessToken,
		RefreshToken: newRefreshToken,
	}, nil
}

// SignOut implements Auth.
func (a *localAuth) SignOut(ctx context.Context, token string) error {
	if token == "" {
		return nil
	}
	claims, err := a.parseToken(token)
	if claims.Audience[0] != refreshTokenAudience {
		return ErrTokenInvalid
	}
	if err != nil {
		return fmt.Errorf("failed to parse token: %w", err)
	}
	if err = a.removeRefreshToken(ctx, claims.ID); err != nil {
		return fmt.Errorf("failed to remove refresh token: %w", err)
	}
	return nil
}

func (a *localAuth) removeRefreshToken(ctx context.Context, jwtID string) error {
	_, err := a.ent.AuthToken.Delete().
		Where(authtoken.JwtID(jwtID)).
		Exec(ctx)
	return err
}

// GetUserByToken implements Auth.
func (a *localAuth) GetUserByToken(ctx context.Context, token string) (*ent.User, error) {
	return a.getUserByLocalToken(ctx, token)
}

// GenerateToken generates a jwt token for the user.
func (a *localAuth) GenerateToken(ctx context.Context, user *ent.User) (*TokenPair, error) {
	accessToken, err := a.generateAccessToken(user)
	if err != nil {
		return nil, fmt.Errorf("failed to generate access token: %w", err)
	}
	refreshToken, err := a.generateRefreshToken(ctx, user)
	if err != nil {
		return nil, fmt.Errorf("failed to generate refresh token: %w", err)
	}

	return &TokenPair{
		AccessToken:  accessToken,
		RefreshToken: refreshToken,
	}, nil
}

// SignUpWithEmailAndPassword handles local authorization with email and password.
func (a *localAuth) SignUpWithEmailAndPassword(ctx context.Context, email string, password string, name *string) (*ent.User, error) {
	hashed, err := a.hash.Hash(password)
	if err != nil {
		return nil, fmt.Errorf("failed to hash password: %w", err)
	}
	var displayName string
	if name == nil || *name == "" {
		emailAddr, parseErr := emailaddress.Parse(email)
		if parseErr != nil {
			return nil, fmt.Errorf("failed to parse email: %w", parseErr)
		}
		displayName = emailAddr.LocalPart
	} else {
		displayName = *name
	}

	entUser, err := a.ent.User.Create().
		SetAuthMethod(property.AuthMethodLocal).
		SetEmail(email).
		SetEmailVerified(false).
		SetPassword(hashed).
		SetDisplayName(displayName).
		Save(ctx)
	if err != nil {
		if ent.IsConstraintError(err) {
			return nil, ErrUserExists
		}
		return nil, fmt.Errorf("failed to create user: %w", err)
	}

	return entUser, nil
}

// SignInWithEmailAndPassword handles local authorization with email and password.
func (a *localAuth) SignInWithEmailAndPassword(ctx context.Context, email string, password string) (*ent.User, error) {
	entUser, err := a.ent.User.Query().
		Where(user.Email(email)).
		Only(ctx)
	if err != nil {
		if ent.IsNotFound(err) {
			return nil, ErrUserNotFound
		}
		return nil, fmt.Errorf("failed to get user from db: %w", err)
	}
	if entUser.AuthMethod != property.AuthMethodLocal || entUser.Password == nil {
		return nil, ErrWrongAuthMethod
	}

	match, err := a.hash.Compare(*entUser.Password, password)
	if err != nil {
		return nil, fmt.Errorf("failed to compare password: %w", err)
	}

	if !match {
		return nil, ErrAuthFailed
	}

	return entUser, nil
}

func (a *localAuth) parseToken(token string) (*jwtClaims, error) {
	claims := &jwtClaims{}
	_, err := jwt.ParseWithClaims(token, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(a.authCfg.JWTKey), nil
	})

	if err != nil {
		return nil, ErrTokenInvalid
	}

	if claims.ExpiresAt.Before(time.Now()) {
		return nil, ErrTokenExpired
	}

	return claims, nil
}

// GetUserByToken implements Auth.
func (a *localAuth) getUserByLocalToken(ctx context.Context, token string) (*ent.User, error) {
	claims, err := a.parseToken(token)
	if err != nil {
		return nil, err
	}
	if claims.Audience[0] != accessTokenAudience {
		return nil, ErrTokenInvalid
	}

	user, err := a.ent.User.Get(ctx, claims.UserID)
	if err != nil {
		if ent.IsNotFound(err) {
			return nil, ErrUserNotFound
		}
		return nil, fmt.Errorf("failed to get user from db: %w", err)
	}
	return user, nil
}

func (a *localAuth) generateAccessToken(user *ent.User) (string, error) {
	issuedAtTime := time.Now()
	expirationTime := issuedAtTime.Add(accessTokenExpirationDuration)
	claims := &jwtClaims{
		UserID: user.ID,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(expirationTime),
			Issuer:    a.authCfg.JWTIss,
			IssuedAt:  jwt.NewNumericDate(issuedAtTime),
			Audience:  jwt.ClaimStrings{accessTokenAudience},
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(a.authCfg.JWTKey))
}

func (a *localAuth) generateRefreshToken(ctx context.Context, user *ent.User) (string, error) {
	issuedAtTime := time.Now()
	expirationTime := issuedAtTime.Add(refreshTokenExpirationDuration)
	jwtID := uuid.New().String()
	claims := &jwtClaims{
		UserID: user.ID,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(expirationTime),
			Issuer:    a.authCfg.JWTIss,
			IssuedAt:  jwt.NewNumericDate(issuedAtTime),
			Audience:  jwt.ClaimStrings{refreshTokenAudience},
			ID:        jwtID,
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

	signedToken, err := token.SignedString([]byte(a.authCfg.JWTKey))
	if err != nil {
		return "", fmt.Errorf("failed to sign token: %w", err)
	}

	_, err = a.ent.AuthToken.
		Create().
		SetUserID(user.ID).
		SetJwtID(jwtID).
		SetExpiresAt(expirationTime).
		SetIssuedAt(issuedAtTime).
		Save(ctx)
	if err != nil {
		return "", fmt.Errorf("failed to save token: %w", err)
	}
	return signedToken, nil
}
