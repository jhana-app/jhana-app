package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lessontechnique"
)

type LessonTechniques interface {
	Load(gqlid.LessonID) ([]*ent.LessonTechnique, error)
	LoadAll([]gqlid.LessonID) ([][]*ent.LessonTechnique, []error)
	Prime(gqlid.LessonID, []*ent.LessonTechnique) bool
	Clear(gqlid.LessonID)
}

func newLessonTechniques(ctx context.Context, client *ent.Client) LessonTechniques {
	return internal.NewLessonTechniquesLoader(internal.LessonTechniquesLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.LessonID) ([][]*ent.LessonTechnique, []error) {
			items, err := client.LessonTechnique.Query().Where(lessontechnique.LessonIDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.LessonID][]*ent.LessonTechnique)
				resp     = make([][]*ent.LessonTechnique, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				if _, found := itemsMap[item.LessonID]; !found {
					itemsMap[item.LessonID] = []*ent.LessonTechnique{item}
				} else {
					itemsMap[item.LessonID] = append(itemsMap[item.LessonID], item)
				}
			}

			for i, key := range keys {
				if item, found := itemsMap[key]; found {
					resp[i] = item
				} else {
					resp[i] = []*ent.LessonTechnique{}
				}
			}

			return resp, errors
		},
	})
}
