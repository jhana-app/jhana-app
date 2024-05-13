package dataloaders

import (
	"context"

	"github.com/jhana-app/jhana-app/ent"
)

type Loaders struct {
	Content              Content
	ContentEpisode       ContentEpisode
	ContentProgress      ContentProgress
	Course               Course
	CourseProgressExists CourseProgressExists
	FirebaseUser         FirebaseUser
	Lesson               Lesson
	LessonAudios         LessonAudios
	LessonsFinished      LessonsFinished
	LessonTechniques     LessonTechniques
	Technique            Technique
	Unit                 Unit
	UnitIsActive         UnitIsActive
	UnitTechniques       UnitTechniques
	UserProgress         UserProgress
}

type Dataloader interface {
	Loaders(ctx context.Context) *Loaders
}

type dataloader struct {
	client *ent.Client
}

func newDataloader(client *ent.Client) Dataloader {
	return &dataloader{
		client: client,
	}
}

// Loaders initializes and returns Loaders.
func (d dataloader) Loaders(ctx context.Context) *Loaders {
	return &Loaders{
		Content:              newContent(ctx, d.client),
		ContentEpisode:       newContentEpisode(ctx, d.client),
		ContentProgress:      newContentProgress(ctx, d.client),
		Course:               newCourse(ctx, d.client),
		CourseProgressExists: newCourseProgressExists(ctx, d.client),
		FirebaseUser:         newFirebaseUser(ctx, d.client),
		Lesson:               newLesson(ctx, d.client),
		LessonAudios:         newLessonAudios(ctx, d.client),
		LessonsFinished:      newLessonsFinished(ctx, d.client),
		LessonTechniques:     newLessonTechniques(ctx, d.client),
		Technique:            newTechnique(ctx, d.client),
		Unit:                 newUnit(ctx, d.client),
		UnitIsActive:         newUnitIsActive(ctx, d.client),
		UnitTechniques:       newUnitTechniques(ctx, d.client),
		UserProgress:         newUserProgress(ctx, d.client),
	}
}
