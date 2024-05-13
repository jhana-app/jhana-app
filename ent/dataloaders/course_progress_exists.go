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

type CourseProgressExists interface {
	Load(gqlid.CourseProgressKey) (bool, error)
	LoadAll([]gqlid.CourseProgressKey) ([]bool, []error)
	Prime(gqlid.CourseProgressKey, bool) bool
	Clear(gqlid.CourseProgressKey)
}

func newCourseProgressExists(ctx context.Context, client *ent.Client) CourseProgressExists {
	return internal.NewCourseProgressExistsLoader(internal.CourseProgressExistsLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.CourseProgressKey) ([]bool, []error) {
			items, err := client.UserProgress.Query().
				Unique(true).
				Modify(func(s *sql.Selector) {
					// NOTE(vlad): we use 'Modify' instead of 'Select' here
					// because Ent will add "id" field to the query by default which breaks DISTINCT query
					s.Select(userprogress.FieldUserID, userprogress.FieldCourseID)
				}).
				Where(func(s *sql.Selector) {
					cols := fmt.Sprintf(`("%s"."%s", "%s"."%s")`,
						userprogress.Table, userprogress.FieldUserID,
						userprogress.Table, userprogress.FieldCourseID,
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
								b.Args(key.UserID.ID, key.CourseID.ID)
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
				itemsMap = make(map[gqlid.CourseProgressKey]bool)
				resp     = make([]bool, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[gqlid.NewCourseProgressKey(item.UserID, item.CourseID)] = true
			}

			for i, key := range keys {
				_, exist := itemsMap[key]
				resp[i] = exist
			}

			return resp, errors
		},
	})
}
