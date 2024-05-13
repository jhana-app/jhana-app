package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent/property"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/userprogress"
)

type LessonsFinished interface {
	Load(gqlid.UnitProgressKey) (int, error)
	LoadAll([]gqlid.UnitProgressKey) ([]int, []error)
	Prime(gqlid.UnitProgressKey, int) bool
	Clear(gqlid.UnitProgressKey)
}

func newLessonsFinished(ctx context.Context, client *ent.Client) LessonsFinished {
	return internal.NewLessonsFinishedLoader(internal.LessonsFinishedLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.UnitProgressKey) ([]int, []error) {
			var items []struct {
				UserID gqlid.UserID `json:"user_id"`
				UnitID gqlid.UnitID `json:"unit_id"`
				Count  int          `json:"count"`
			}
			err := client.UserProgress.Query().
				Where(
					userprogress.LessonTypeEQ(property.LessonGuided),
					userprogress.FinishedAtNotNil(),
				).
				GroupBy(userprogress.FieldUserID, userprogress.FieldUnitID).
				Aggregate(ent.Count()).
				Scan(ctx, &items)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.UnitProgressKey]int)
				resp     = make([]int, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				itemsMap[gqlid.NewUnitProgressKey(item.UserID, item.UnitID)] = item.Count
			}

			for i, key := range keys {
				if item, exist := itemsMap[key]; exist {
					resp[i] = item
				} else {
					resp[i] = 0
				}
			}

			return resp, errors
		},
	})
}
