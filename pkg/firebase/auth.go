package firebase

import (
	"context"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/auth"
)

func newFirebaseAuth(fbApp *firebase.App) (*auth.Client, error) {
	if fbApp == nil {
		return nil, nil
	}
	return fbApp.Auth(context.Background())
}
