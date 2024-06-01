package auth

import (
	"context"
	"fmt"

	fbAuth "firebase.google.com/go/v4/auth"
	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/user"
	"github.com/mcnijman/go-emailaddress"
)

type firebaseAuth struct {
	ent    *ent.Client
	fbAuth *fbAuth.Client
}

// RefreshToken implements Auth.
func (a *firebaseAuth) RefreshToken(ctx context.Context, refreshToken string) (*TokenPair, error) {
	panic("unimplemented")
}

// SignOut implements Auth.
func (a *firebaseAuth) SignOut(ctx context.Context, token string) error {
	return a.fbAuth.RevokeRefreshTokens(ctx, token)
}

func (a *firebaseAuth) GetUserByToken(ctx context.Context, token string) (*ent.User, error) {
	jwt, err := a.fbAuth.VerifyIDToken(ctx, token)
	if err != nil {
		if fbAuth.IsIDTokenExpired(err) {
			return nil, ErrTokenExpired
		}
		if fbAuth.IsIDTokenInvalid(err) {
			return nil, ErrTokenInvalid
		}
		return nil, fmt.Errorf("failed to verify token: %w", err)
	}

	return a.getUserByFirebaseUID(ctx, jwt.UID)
}

// GenerateToken implements Auth.
func (a *firebaseAuth) GenerateToken(ctx context.Context, user *ent.User) (*TokenPair, error) {
	if user.AuthMethod != property.AuthMethodFirebase || user.FirebaseUid == nil {
		return nil, ErrWrongAuthMethod
	}
	token, err := a.fbAuth.CustomToken(ctx, *user.FirebaseUid)
	if err != nil {
		return nil, fmt.Errorf("failed to generate custom token: %w", err)
	}
	return &TokenPair{
		AccessToken:  token,
		RefreshToken: "",
	}, nil
}

// SignInWithEmailAndPassword implements Auth.
func (a *firebaseAuth) SignInWithEmailAndPassword(ctx context.Context, email string, password string) (*ent.User, error) {
	// Firebase admin sdk doesn't have a method to sign in with email and password or check a password hash.
	// XXX(slava): We can implement signing in with a rest api or a custom client.
	// Read more at https://github.com/firebase/firebase-admin-node/issues/1141
	// Just ignore it for now
	return nil, ErrAuthFailed
}

// SignUpWithEmailAndPassword implements Auth.
func (a *firebaseAuth) SignUpWithEmailAndPassword(ctx context.Context, email string, password string, name *string) (*ent.User, error) {
	var displayName string
	if name == nil || *name == "" {
		emailAddr, err := emailaddress.Parse(email)
		if err != nil {
			return nil, fmt.Errorf("failed to parse email: %w", err)
		}
		displayName = emailAddr.LocalPart
	} else {
		displayName = *name
	}

	var userToCreate = &fbAuth.UserToCreate{}

	fbUser, err := a.fbAuth.CreateUser(ctx, userToCreate.Email(email).Password(password).DisplayName(displayName).EmailVerified(false))
	if err != nil {
		return nil, fmt.Errorf("failed to create firebase user: %w", err)
	}
	return a.createFirebaseUser(ctx, fbUser)
}

// getUserByFirebaseUID gets a user from the database by their firebase UID.
// If the user does not exist in the database, it will add a new user in database based on the firebase user.
func (a *firebaseAuth) getUserByFirebaseUID(ctx context.Context, userUID string) (*ent.User, error) {
	entUser, err := dataloaders.MustGet(ctx).FirebaseUser.Load(userUID)
	if ent.IsNotFound(err) {
		fbUser, authErr := a.fbAuth.GetUser(ctx, userUID)
		if authErr != nil {
			return nil, fmt.Errorf("failed to get firebase user: %w", authErr)
		}
		return a.createFirebaseUser(ctx, fbUser)
	} else if err != nil {
		return nil, fmt.Errorf("failed to get user from db: %w", err)
	}

	return entUser, nil
}

// createFirebaseUser creates a new user in the database based on a firebase user.
func (a *firebaseAuth) createFirebaseUser(ctx context.Context, fbUser *fbAuth.UserRecord) (*ent.User, error) {
	entUser, err := a.ent.User.Create().
		SetFirebaseUid(fbUser.UID).
		SetAuthMethod(property.AuthMethodFirebase).
		SetEmailVerified(fbUser.EmailVerified).
		SetDisplayName(fbUser.DisplayName).
		Save(ctx)
	if err != nil {
		if ent.IsConstraintError(err) {
			return a.ent.User.Query().Where(user.FirebaseUid(fbUser.UID)).Only(ctx)
		}
		return nil, fmt.Errorf("failed to create user: %w", err)
	}

	return entUser, nil
}
