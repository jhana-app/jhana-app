package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/user"
)

type FirebaseUser interface {
	Load(string) (*ent.User, error)
	LoadAll([]string) ([]*ent.User, []error)
	Prime(string, *ent.User) bool
	Clear(string)
}

func newFirebaseUser(ctx context.Context, client *ent.Client) FirebaseUser {
	return internal.NewFirebaseUserLoader(internal.FirebaseUserLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []string) ([]*ent.User, []error) {
			items, err := client.User.Query().Where(user.FirebaseUidIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[string]*ent.User)
				resp     = make([]*ent.User, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[*item.FirebaseUid] = item
			}

			for i, key := range keys {
				if item, found := itemsMap[key]; found {
					resp[i] = item
				} else {
					errors[i] = &ent.NotFoundError{}
				}
			}

			return resp, errors
		},
	})
}
