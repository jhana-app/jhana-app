package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/technique"
)

type Technique interface {
	Load(gqlid.TechniqueID) (*ent.Technique, error)
	LoadAll([]gqlid.TechniqueID) ([]*ent.Technique, []error)
	Prime(gqlid.TechniqueID, *ent.Technique) bool
	Clear(gqlid.TechniqueID)
}

func newTechnique(ctx context.Context, client *ent.Client) Technique {
	return internal.NewTechniqueLoader(internal.TechniqueLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.TechniqueID) ([]*ent.Technique, []error) {
			items, err := client.Technique.Query().Where(technique.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.TechniqueID]*ent.Technique)
				resp     = make([]*ent.Technique, len(keys))
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
