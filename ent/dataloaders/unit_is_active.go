package dataloaders

import (
	"context"
	"fmt"

	"entgo.io/ent/dialect/sql"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/userprogress"
)

type UnitIsActive interface {
	Load(gqlid.UnitProgressKey) (bool, error)
	LoadAll([]gqlid.UnitProgressKey) ([]bool, []error)
	Prime(gqlid.UnitProgressKey, bool) bool
	Clear(gqlid.UnitProgressKey)
}

func newUnitIsActive(ctx context.Context, client *ent.Client) UnitIsActive {
	return internal.NewUnitIsActiveLoader(internal.UnitIsActiveLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.UnitProgressKey) ([]bool, []error) {
			items, err := client.UserProgress.Query().
				Unique(true).
				Modify(func(s *sql.Selector) {
					// NOTE(vlad): we use 'Modify' instead of 'Select' here
					// because Ent will add "id" field to the query by default which breaks DISTINCT query
					s.Select(userprogress.FieldUserID, userprogress.FieldUnitID)
				}).
				Where(
					func(s *sql.Selector) {
						cols := fmt.Sprintf(`("%s"."%s", "%s"."%s")`,
							userprogress.Table, userprogress.FieldUserID,
							userprogress.Table, userprogress.FieldUnitID,
						)
						// NOTE(vlad): this is a workaround for make it possible to use IN operator with composite keys
						s.Where(sql.P(func(b *sql.Builder) {
							b.Join(sql.ExprFunc(func(b *sql.Builder) {
								b.WriteString(cols).WriteOp(sql.OpIn)
								b.WriteString("(")
								for i, key := range keys {
									if i > 0 {
										b.WriteString(",")
									}
									b.WriteString("(")
									b.Args(key.UserID.ID, key.UnitID.ID)
									b.WriteString(")")
								}
								b.WriteString(")")
							}))
						}))
					},
					userprogress.IsNext(true),
				).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.UnitProgressKey]bool)
				resp     = make([]bool, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[gqlid.NewUnitProgressKey(item.UserID, item.UnitID)] = true
			}

			for i, key := range keys {
				_, exist := itemsMap[key]
				resp[i] = exist
			}

			return resp, errors
		},
	})
}
