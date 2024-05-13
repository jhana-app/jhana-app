package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/course"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
)

type Course interface {
	Load(gqlid.CourseID) (*ent.Course, error)
	LoadAll([]gqlid.CourseID) ([]*ent.Course, []error)
	Prime(gqlid.CourseID, *ent.Course) bool
	Clear(gqlid.CourseID)
}

func newCourse(ctx context.Context, client *ent.Client) Course {
	return internal.NewCourseLoader(internal.CourseLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.CourseID) ([]*ent.Course, []error) {
			items, err := client.Course.Query().Where(course.IDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.CourseID]*ent.Course)
				resp     = make([]*ent.Course, len(keys))
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
