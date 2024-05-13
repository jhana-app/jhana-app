package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/contentepisode"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
)

type ContentEpisode interface {
	Load(gqlid.ContentEpisodeID) (*ent.ContentEpisode, error)
	LoadAll([]gqlid.ContentEpisodeID) ([]*ent.ContentEpisode, []error)
	Prime(gqlid.ContentEpisodeID, *ent.ContentEpisode) bool
	Clear(gqlid.ContentEpisodeID)
}

func newContentEpisode(ctx context.Context, client *ent.Client) ContentEpisode {
	return internal.NewContentEpisodeLoader(internal.ContentEpisodeLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.ContentEpisodeID) ([]*ent.ContentEpisode, []error) {
			items, err := client.ContentEpisode.Query().Where(contentepisode.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.ContentEpisodeID]*ent.ContentEpisode)
				resp     = make([]*ent.ContentEpisode, len(keys))
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
