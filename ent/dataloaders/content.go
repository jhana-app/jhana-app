package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/content"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
)

type Content interface {
	Load(gqlid.ContentID) (*ent.Content, error)
	LoadAll([]gqlid.ContentID) ([]*ent.Content, []error)
	Prime(gqlid.ContentID, *ent.Content) bool
	Clear(gqlid.ContentID)
}

func newContent(ctx context.Context, client *ent.Client) Content {
	return internal.NewContentLoader(internal.ContentLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.ContentID) ([]*ent.Content, []error) {
			items, err := client.Content.Query().Where(content.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.ContentID]*ent.Content)
				resp     = make([]*ent.Content, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[item.ID] = item
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
