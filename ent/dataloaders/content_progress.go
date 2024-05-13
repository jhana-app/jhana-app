package dataloaders

import (
	"context"
	"fmt"

	"entgo.io/ent/dialect/sql"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/contentprogress"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
)

type ContentProgress interface {
	Load(gqlid.ContentProgressKey) (*ent.ContentProgress, error)
	LoadAll([]gqlid.ContentProgressKey) ([]*ent.ContentProgress, []error)
	Prime(gqlid.ContentProgressKey, *ent.ContentProgress) bool
	Clear(gqlid.ContentProgressKey)
}

func newContentProgress(ctx context.Context, client *ent.Client) ContentProgress {
	return internal.NewContentProgressLoader(internal.ContentProgressLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.ContentProgressKey) ([]*ent.ContentProgress, []error) {
			items, err := client.ContentProgress.Query().Where(func(s *sql.Selector) {
				cols := fmt.Sprintf(`("%s"."%s", "%s"."%s")`,
					contentprogress.Table, contentprogress.FieldUserID,
					contentprogress.Table, contentprogress.FieldEpisodeID,
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
							b.Args(key.UserID.ID, key.EpisodeID.ID)
							b.WriteString(")")
						}
						b.WriteString(")")
					}))
				}))
			}).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.ContentProgressKey]*ent.ContentProgress)
				resp     = make([]*ent.ContentProgress, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[gqlid.NewContentProgressKey(item.UserID, item.EpisodeID)] = item
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
