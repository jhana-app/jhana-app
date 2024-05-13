package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/unit"
)

type Unit interface {
	Load(gqlid.UnitID) (*ent.Unit, error)
	LoadAll([]gqlid.UnitID) ([]*ent.Unit, []error)
	Prime(gqlid.UnitID, *ent.Unit) bool
	Clear(gqlid.UnitID)
}

func newUnit(ctx context.Context, client *ent.Client) Unit {
	return internal.NewUnitLoader(internal.UnitLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.UnitID) ([]*ent.Unit, []error) {
			items, err := client.Unit.Query().Where(unit.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.UnitID]*ent.Unit)
				resp     = make([]*ent.Unit, len(keys))
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
