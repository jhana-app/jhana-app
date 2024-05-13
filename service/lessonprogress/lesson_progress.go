package lessonprogress

import (
	"context"
	"fmt"
	"time"

	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/unit"
	"github.com/jhana-app/jhana-app/ent/userprogress"
)

type LessonProgress interface {
	SaveLessonProgress(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User, progress int64) (*ent.UserProgress, error)
	ResetLessonProgress(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User) (*ent.UserProgress, bool, error)
	FinishLesson(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User, dt time.Time) (*ent.UserProgress, bool, bool, error)
	ResetUnitProgress(ctx context.Context, unitObj *ent.Unit, userObj *ent.User) (*ent.UserProgress, error)
}

type service struct {
	client *ent.Client
	logger *zap.Logger
}

func newLessonProgress(client *ent.Client, logger *zap.Logger) LessonProgress {
	return &service{
		client: client,
		logger: logger,
	}
}

func (s *service) SaveLessonProgress(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User, progress int64) (*ent.UserProgress, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("lesson_id", lessonObj.ID.ID), zap.Int64("unit_id", lessonObj.UnitID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	// get user progress if exists
	progressObj, err := tx.UserProgress.Query().
		Where(userprogress.UserID(userObj.ID), userprogress.LessonID(lessonObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get user progress from db", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get user progress from db: %w", err))
	}

	if progressObj != nil && progressObj.FinishedAt == nil {
		if progressObj, err = progressObj.Update().SetProgress(progress).Save(ctx); err != nil {
			logger.Error("failed to save user progress", zap.Error(err))
			return nil, rollback(fmt.Errorf("failed to save user progress: %w", err))
		}
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to commit transaction: %w", err)
	}

	return progressObj, nil
}

func (s *service) ResetLessonProgress(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User) (*ent.UserProgress, bool, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("lesson_id", lessonObj.ID.ID), zap.Int64("unit_id", lessonObj.UnitID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return nil, false, fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	// get user progress if exists
	progressObj, err := tx.UserProgress.Query().
		Where(userprogress.UserID(userObj.ID), userprogress.LessonID(lessonObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get user progress from db", zap.Error(err))
		return nil, false, rollback(fmt.Errorf("failed to get user progress from db: %w", err))
	}

	reset := false
	if progressObj != nil {
		if progressObj, err = progressObj.Update().SetProgress(0).SetNillableFinishedAt(nil).Save(ctx); err != nil {
			logger.Error("failed to reset user progress", zap.Error(err))
			return nil, false, rollback(fmt.Errorf("failed to reset user progress: %w", err))
		}

		reset = true
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, false, fmt.Errorf("failed to commit transaction: %w", err)
	}

	return progressObj, reset, nil
}

func (s *service) FinishLesson(ctx context.Context, lessonObj *ent.Lesson, userObj *ent.User, dt time.Time) (*ent.UserProgress, bool, bool, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("lesson_id", lessonObj.ID.ID), zap.Int64("unit_id", lessonObj.UnitID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return nil, false, false, fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	unitObj, err := tx.Unit.Get(ctx, lessonObj.UnitID)
	if err != nil {
		logger.Error("failed to get unit from db", zap.Error(err))
		return nil, false, false, rollback(fmt.Errorf("failed to get unit from db: %w", err))
	}
	logger = logger.With(zap.Int64("course_id", unitObj.CourseID.ID))

	// get user progress if exists
	progressObj, err := tx.UserProgress.Query().
		Where(userprogress.UserID(userObj.ID), userprogress.LessonID(lessonObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get user progress from db", zap.Error(err))
		return nil, false, false, rollback(fmt.Errorf("failed to get user progress from db: %w", err))
	}

	var (
		isNew      = false
		isFinished = false
	)
	if progressObj == nil || progressObj.FinishedAt == nil || progressObj.FinishedAt.Before(dt.Add(-15*time.Second)) {
		// reset last/next for user progress in the same course
		_, err = tx.UserProgress.Update().
			Where(userprogress.UserID(userObj.ID), userprogress.CourseID(unitObj.CourseID)).
			SetIsLast(false).
			SetIsNext(false).
			Save(ctx)
		if err != nil {
			logger.Error("failed to reset user progress last/next", zap.Error(err))
			return nil, false, false, rollback(fmt.Errorf("failed to reset user progress last/next: %w", err))
		}

		if progressObj == nil {
			// user progress for this lesson is not found, create new one
			progressObj, err = tx.UserProgress.Create().
				SetUserID(userObj.ID).
				SetCourseID(unitObj.CourseID).
				SetUnitID(lessonObj.UnitID).
				SetLessonID(lessonObj.ID).
				SetLessonType(lessonObj.Type).
				SetIsNext(false).
				SetIsLast(true).
				SetProgress(0).
				SetFinishedAt(dt).
				Save(ctx)
			if err != nil {
				logger.Error("failed to create user progress", zap.Error(err))
				return nil, false, false, rollback(fmt.Errorf("failed to create user progress: %w", err))
			}

			isNew = true
		} else {
			if progressObj.FinishedAt == nil && progressObj.Progress == 0 {
				isNew = true
			}
			// user progress for this lesson is found, update last/finishedAt
			if progressObj, err = progressObj.Update().SetIsLast(true).SetProgress(0).SetFinishedAt(dt).Save(ctx); err != nil {
				logger.Error("failed to update user progress", zap.Error(err), zap.Int64("user_progress_id", progressObj.ID.ID))
				return nil, false, false, rollback(fmt.Errorf("failed to update user progress: %w", err))
			}
		}

		isFinished = true
	}
	logger = logger.With(zap.Int64("user_progress_id", progressObj.ID.ID))

	nextProgress, err := s.getNextProgress(ctx, tx, userObj, unitObj, lessonObj)
	if err != nil {
		logger.Error("failed to sync unit progress", zap.Error(err))
		return nil, false, false, rollback(fmt.Errorf("failed to sync unit progress: %w", err))
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, false, false, fmt.Errorf("failed to commit transaction: %w", err)
	}

	return nextProgress, isNew, isFinished, nil
}

func (s *service) ResetUnitProgress(ctx context.Context, unitObj *ent.Unit, userObj *ent.User) (*ent.UserProgress, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("unit_id", unitObj.ID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	_, err = tx.UserProgress.Delete().Where(userprogress.UserID(userObj.ID), userprogress.UnitID(unitObj.ID)).Exec(ctx)
	if err != nil {
		logger.Error("failed to delete unit user progress", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to delete unit user progress: %w", err))
	}

	// reset last/next for user progress in the same course
	_, err = tx.UserProgress.Update().
		Where(userprogress.UserID(userObj.ID), userprogress.CourseID(unitObj.CourseID)).
		SetIsLast(false).
		SetIsNext(false).
		Save(ctx)
	if err != nil {
		logger.Error("failed to reset user progress last/next", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to reset user progress last/next: %w", err))
	}

	firstLesson, err := tx.Lesson.Query().Where(lesson.UnitID(unitObj.ID)).Order(ent.Asc(lesson.FieldOrder)).First(ctx)
	if err != nil {
		logger.Error("failed to get first unit lesson", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get first unit lesson: %w", err))
	}

	nextProgress, err := tx.UserProgress.Create().
		SetUserID(userObj.ID).
		SetCourseID(unitObj.CourseID).
		SetUnitID(unitObj.ID).
		SetLessonID(firstLesson.ID).
		SetLessonType(firstLesson.Type).
		SetIsNext(true).
		SetIsLast(false).
		Save(ctx)
	if err != nil {
		logger.Error("failed to create user progress", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to create user progress: %w", err))
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to commit transaction: %w", err)
	}

	return nextProgress, nil
}

func (s *service) getNextProgress(
	ctx context.Context,
	tx *ent.Tx,
	userObj *ent.User,
	unitObj *ent.Unit,
	lessonObj *ent.Lesson,
) (*ent.UserProgress, error) {
	courseID := unitObj.CourseID

	// get all course lessons IDs and finished state
	courseLessonsProgress, err := tx.UserProgress.Query().
		Select(userprogress.FieldLessonID, userprogress.FieldFinishedAt).
		Where(userprogress.UserID(userObj.ID), userprogress.CourseID(courseID)).
		All(ctx)
	if err != nil {
		return nil, fmt.Errorf("failed to get course lessons progress: %w", err)
	}

	var lessonsIDs = make(map[gqlid.LessonID]bool, len(courseLessonsProgress))
	for _, l := range courseLessonsProgress {
		lessonsIDs[l.LessonID] = l.FinishedAt != nil
	}

	// get next units
	nextUnits, err := tx.Unit.Query().
		Select(unit.FieldID).
		Where(unit.CourseID(courseID), unit.OrderGTE(unitObj.Order)).
		Order(ent.Asc(unit.FieldOrder)).
		All(ctx)
	if err != nil {
		return nil, fmt.Errorf("failed to get next units: %w", err)
	}

	for _, nextUnit := range nextUnits {
		unitLessons, lessonErr := tx.Lesson.Query().
			Select(lesson.FieldID, lesson.FieldType, lesson.FieldOrder).
			Where(lesson.UnitID(nextUnit.ID)).
			Order(ent.Asc(unit.FieldOrder)).
			All(ctx)
		if lessonErr != nil {
			return nil, fmt.Errorf("failed to get unit lessons: %w", lessonErr)
		}

		var minOrder = 0 // start from the first unit lesson
		if nextUnit.ID.ID == unitObj.ID.ID {
			minOrder = lessonObj.Order // for current lesson unit, start from the current lesson
		}

		// go through all next unit lessons to get next unfinished lesson and to create lesson progresses for the whole unit
		var (
			nextProgressObj       *ent.UserProgress
			masteringLessonsCount int
		)
		for _, unitLesson := range unitLessons {
			isFinished, isFound := lessonsIDs[unitLesson.ID]
			if isFinished {
				continue // lesson is finished, continue to the next lesson
			}

			// lesson is next if it is not finished, it is after current lesson and next lesson is not found yet
			isNext := nextProgressObj == nil && unitLesson.Order > minOrder

			if !isFound { //nolint:gocritic // don't criticize this =)
				// user progress for this lesson is not found, create new one
				progressObj, progressErr := tx.UserProgress.Create().
					SetUserID(userObj.ID).
					SetCourseID(courseID).
					SetUnitID(nextUnit.ID).
					SetLessonID(unitLesson.ID).
					SetLessonType(unitLesson.Type).
					SetIsNext(isNext).
					SetIsLast(false).
					Save(ctx)
				if progressErr != nil {
					return nil, fmt.Errorf("failed to create user progress: %w", progressErr)
				}

				if isNext {
					nextProgressObj = progressObj
				}
			} else if isNext {
				nextProgressObj, lessonErr = tx.UserProgress.Query().
					Where(userprogress.UserID(userObj.ID), userprogress.LessonID(unitLesson.ID)).
					Only(ctx)
				if lessonErr != nil {
					return nil, fmt.Errorf("failed to get user progress: %w", lessonErr)
				}

				nextProgressObj, lessonErr = nextProgressObj.Update().SetIsNext(true).Save(ctx)
				if lessonErr != nil {
					return nil, fmt.Errorf("failed to update user progress: %w", lessonErr)
				}
			} else if unitLesson.Order <= minOrder {
				continue // lesson is before current lesson, continue to the next lesson
			}

			// show mastering lessons with pack of 5 lessons:
			// show next 5 mastering lessons when user finished previous 5 mastering lessons
			if unitLesson.Type == property.LessonMastery {
				masteringLessonsCount++
				if masteringLessonsCount >= 5 && nextProgressObj != nil && masteringLessonsCount%5 == 0 {
					break
				}
			}
		}

		if nextProgressObj != nil {
			return nextProgressObj, nil
		}
	}

	return nil, nil
}
