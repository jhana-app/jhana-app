package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders/internal"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lessonaudio"
)

type LessonAudios interface {
	Load(gqlid.LessonID) ([]*ent.LessonAudio, error)
	LoadAll([]gqlid.LessonID) ([][]*ent.LessonAudio, []error)
	Prime(gqlid.LessonID, []*ent.LessonAudio) bool
	Clear(gqlid.LessonID)
}

func newLessonAudios(ctx context.Context, client *ent.Client) LessonAudios {
	return internal.NewLessonAudiosLoader(internal.LessonAudiosLoaderConfig{
		Wait: loaderWaitTime,
		Fetch: func(keys []gqlid.LessonID) ([][]*ent.LessonAudio, []error) {
			items, err := client.LessonAudio.Query().Where(lessonaudio.LessonIDIn(keys...)).All(ctx)
			if err != nil {
				return nil, []error{err}
			}

			var (
				itemsMap = make(map[gqlid.LessonID][]*ent.LessonAudio)
				resp     = make([][]*ent.LessonAudio, len(keys))
				errors   = make([]error, len(keys))
			)

			for _, item := range items {
				if _, found := itemsMap[item.LessonID]; !found {
					itemsMap[item.LessonID] = []*ent.LessonAudio{item}
				} else {
					itemsMap[item.LessonID] = append(itemsMap[item.LessonID], item)
				}
			}

			for i, key := range keys {
				if item, found := itemsMap[key]; found {
					resp[i] = item
				} else {
					resp[i] = []*ent.LessonAudio{}
				}
			}

			return resp, errors
		},
	})
}
