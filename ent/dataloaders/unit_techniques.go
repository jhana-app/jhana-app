package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/unittechnique"
)

type UnitTechniques interface {
	Load(gqlid.UnitID) ([]*ent.UnitTechnique, error)
	LoadAll([]gqlid.UnitID) ([][]*ent.UnitTechnique, []error)
	Prime(gqlid.UnitID, []*ent.UnitTechnique) bool
	Clear(gqlid.UnitID)
}

func newUnitTechniques(ctx context.Context, client *ent.Client) UnitTechniques {
	return internal.NewUnitTechniquesLoader(internal.UnitTechniquesLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.UnitID) ([][]*ent.UnitTechnique, []error) {
			items, err := client.UnitTechnique.Query().Where(unittechnique.UnitIDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.UnitID][]*ent.UnitTechnique)
				resp     = make([][]*ent.UnitTechnique, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				if _, found := itemsMap[item.UnitID]; !found {
					itemsMap[item.UnitID] = []*ent.UnitTechnique{item}
				} else {
					itemsMap[item.UnitID] = append(itemsMap[item.UnitID], item)
				}
			}

			for i, key := range keys {
				if item, found := itemsMap[key]; found {
					resp[i] = item
				} else {
					resp[i] = []*ent.UnitTechnique{}
				}
			}

			return resp, errors
		},
	})
}
