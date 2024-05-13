package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
)

type Lesson interface {
	Load(gqlid.LessonID) (*ent.Lesson, error)
	LoadAll([]gqlid.LessonID) ([]*ent.Lesson, []error)
	Prime(gqlid.LessonID, *ent.Lesson) bool
	Clear(gqlid.LessonID)
}

func newLesson(ctx context.Context, client *ent.Client) Lesson {
	return internal.NewLessonLoader(internal.LessonLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.LessonID) ([]*ent.Lesson, []error) {
			items, err := client.Lesson.Query().Where(lesson.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.LessonID]*ent.Lesson)
				resp     = make([]*ent.Lesson, len(keys))
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
