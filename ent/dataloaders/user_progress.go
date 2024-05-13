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

type UserProgress interface {
	Load(gqlid.UserProgressKey) (*ent.UserProgress, error)
	LoadAll([]gqlid.UserProgressKey) ([]*ent.UserProgress, []error)
	Prime(gqlid.UserProgressKey, *ent.UserProgress) bool
	Clear(gqlid.UserProgressKey)
}

func newUserProgress(ctx context.Context, client *ent.Client) UserProgress {
	return internal.NewUserProgressLoader(internal.UserProgressLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.UserProgressKey) ([]*ent.UserProgress, []error) {
			items, err := client.UserProgress.Query().Where(func(s *sql.Selector) {
				cols := fmt.Sprintf(`("%s"."%s", "%s"."%s")`,
					userprogress.Table, userprogress.FieldUserID,
					userprogress.Table, userprogress.FieldLessonID,
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
							b.Args(key.UserID.ID, key.LessonID.ID)
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
				itemsMap = make(map[gqlid.UserProgressKey]*ent.UserProgress)
				resp     = make([]*ent.UserProgress, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[gqlid.NewUserProgressKey(item.UserID, item.LessonID)] = item
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
