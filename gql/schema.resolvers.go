package gql

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.
// Code generated by github.com/99designs/gqlgen version v0.17.46

import (
	"context"
	"fmt"
	"math"
	"math/rand"
	"time"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/journalrecord"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/userprogress"
	"github.com/jhana-app/jhana-app/internal/authctx"
	"github.com/jhana-app/jhana-app/pkg/discord"
	"github.com/jhana-app/jhana-app/service/auth"
	"go.uber.org/zap"
)

// SignInWithEmailAndPassword is the resolver for the signInWithEmailAndPassword field.
func (r *mutationResolver) SignInWithEmailAndPassword(ctx context.Context, input SignInWithEmailAndPasswordInput) (*SignInWithEmailAndPasswordResult, error) {
	time.Sleep(1*time.Second + time.Duration(rand.Intn(1000))*time.Millisecond)

	user, err := r.auth.SignInWithEmailAndPassword(ctx, input.Email, input.Password)
	logger := r.logger.With(zap.String("email", input.Email))

	if err != nil {
		logger.Warn("failed to sign in local", zap.Error(err))
		return nil, fmt.Errorf("failed to sign in")
	}

	tokenPair, err := r.auth.GenerateToken(ctx, user)
	if err != nil {
		logger.Error("failed to generate token", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	return &SignInWithEmailAndPasswordResult{
		User:         user,
		AccessToken:  tokenPair.AccessToken,
		RefreshToken: tokenPair.RefreshToken,
	}, nil
}

// SignUpWithEmailAndPassword is the resolver for the signUpWithEmailAndPassword field.
func (r *mutationResolver) SignUpWithEmailAndPassword(ctx context.Context, input SignUpWithEmailAndPasswordInput) (*SignUpWithEmailAndPasswordResult, error) {
	time.Sleep(1*time.Second + time.Duration(rand.Intn(1000))*time.Millisecond)
	user, err := r.auth.SignUpWithEmailAndPassword(ctx, input.Email, input.Password, input.Name)
	logger := r.logger.With(zap.String("email", input.Email))

	if err != nil {
		if err == auth.ErrUserExists {
			return nil, fmt.Errorf("user exists")
		}
		logger.Warn("failed to sign up", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	tokenPair, err := r.auth.GenerateToken(ctx, user)
	if err != nil {
		logger.Error("failed to generate token", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	return &SignUpWithEmailAndPasswordResult{
		User:         user,
		AccessToken:  tokenPair.AccessToken,
		RefreshToken: tokenPair.RefreshToken,
	}, nil
}

// RefreshToken is the resolver for the refreshToken field.
func (r *mutationResolver) RefreshToken(ctx context.Context, input RefreshTokenInput) (*RefreshTokenResult, error) {
	tokenPair, err := r.auth.RefreshToken(ctx, input.RefreshToken)
	if err != nil {
		r.logger.Error("failed to refresh token", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}
	return &RefreshTokenResult{
		AccessToken:  tokenPair.AccessToken,
		RefreshToken: tokenPair.RefreshToken,
	}, nil
}

// SignOut is the resolver for the signOut field.
func (r *mutationResolver) SignOut(ctx context.Context, input SignOutInput) (bool, error) {
	err := r.auth.SignOut(ctx, input.RefreshToken)
	if err != nil {
		r.logger.Error("failed to sign out", zap.Error(err))
		return false, fmt.Errorf("internal server error")
	}
	return true, nil
}

// DownloadUnit is the resolver for the downloadUnit field.
func (r *mutationResolver) DownloadUnit(ctx context.Context, id gqlid.Base64ID, input DownloadUnitInput) (*DownloadUnitResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	unitID, err := gqlid.NewUnitIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("unit_id", unitID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	unitObj, err := r.client.Unit.Get(ctx, *unitID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("unit not found")
			return nil, fmt.Errorf("unit not found")
		}
		logger.Error("failed to get unit from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if input.Finished {
		go r.discord.DownloadUnitFinish(ctx, authenticatedUser.DisplayName, unitObj.Title)
	} else {
		go r.discord.DownloadUnitStart(ctx, authenticatedUser.DisplayName, unitObj.Title)
	}

	return &DownloadUnitResult{Success: true}, nil
}

// ResetUnitProgress is the resolver for the resetUnitProgress field.
func (r *mutationResolver) ResetUnitProgress(ctx context.Context, id gqlid.Base64ID, input ResetUnitProgressInput) (*ent.Unit, error) {
	if !input.Confirm {
		return nil, fmt.Errorf("need user confirm")
	}

	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	unitID, err := gqlid.NewUnitIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("unit_id", unitID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	unitObj, err := r.client.Unit.Get(ctx, *unitID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("unit not found")
			return nil, fmt.Errorf("unit not found")
		}
		logger.Error("failed to get unit from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	// reset unit progress
	_, err = r.lessonProgress.ResetUnitProgress(ctx, unitObj, authenticatedUser)
	if err != nil {
		logger.Error("failed to reset unit progress", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	go r.discord.ResetUnitProgress(ctx, authenticatedUser.DisplayName, unitObj.Title)

	return unitObj, nil
}

// SaveLessonProgress is the resolver for the saveLessonProgress field.
func (r *mutationResolver) SaveLessonProgress(ctx context.Context, id gqlid.Base64ID, input SaveLessonProgressInput) (bool, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return false, nil
	}

	lessonID, err := gqlid.NewLessonIDFromBase64(&id)
	if err != nil {
		return false, err
	}

	logger := r.logger.With(zap.Int64("lesson_id", lessonID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	lessonObj, err := r.client.Lesson.Get(ctx, *lessonID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("lesson not found")
			return false, fmt.Errorf("lesson not found")
		}
		logger.Error("failed to get lesson from db", zap.Error(err))
		return false, fmt.Errorf("internal server error")
	}

	// save lesson progress
	_, err = r.lessonProgress.SaveLessonProgress(ctx, lessonObj, authenticatedUser, int64(input.Progress))
	if err != nil {
		logger.Error("failed to save lesson progress", zap.Error(err))
		return false, fmt.Errorf("internal server error")
	}

	return true, nil
}

// DownloadLesson is the resolver for the downloadLesson field.
func (r *mutationResolver) DownloadLesson(ctx context.Context, id gqlid.Base64ID, input DownloadLessonInput) (*DownloadLessonResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	lessonID, err := gqlid.NewLessonIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("lesson_id", lessonID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	lessonObj, err := r.client.Lesson.Get(ctx, *lessonID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("lesson not found")
			return nil, fmt.Errorf("lesson not found")
		}
		logger.Error("failed to get lesson from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	unitObj, err := lessonObj.Unit(ctx)
	if err != nil {
		logger.Error("failed to get unit from db", zap.Error(err), zap.Int64("unit_id", lessonObj.UnitID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	if input.Finished {
		go r.discord.DownloadLessonFinish(ctx, authenticatedUser.DisplayName, lessonObj.Title, unitObj.Title)
	} else {
		go r.discord.DownloadLessonStart(ctx, authenticatedUser.DisplayName, lessonObj.Title, unitObj.Title)
	}

	return &DownloadLessonResult{Success: true}, nil
}

// ResetLessonProgress is the resolver for the resetLessonProgress field.
func (r *mutationResolver) ResetLessonProgress(ctx context.Context, id gqlid.Base64ID, input ResetLessonProgressInput) (*ent.Lesson, error) {
	if !input.Confirm {
		return nil, fmt.Errorf("need user confirm")
	}

	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	lessonID, err := gqlid.NewLessonIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("lesson_id", lessonID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	lessonObj, err := r.client.Lesson.Get(ctx, *lessonID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("lesson not found")
			return nil, fmt.Errorf("lesson not found")
		}
		logger.Error("failed to get lesson from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	unitObj, err := lessonObj.Unit(ctx)
	if err != nil {
		logger.Error("failed to get unit from db", zap.Error(err), zap.Int64("unit_id", lessonObj.UnitID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	// reset lesson progress
	_, reset, err := r.lessonProgress.ResetLessonProgress(ctx, lessonObj, authenticatedUser)
	if err != nil {
		logger.Error("failed to reset lesson progress", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if reset {
		go r.discord.ResetLessonProgress(ctx, authenticatedUser.DisplayName, lessonObj.Title, unitObj.Title)
	}

	return lessonObj, nil
}

// FinishLesson is the resolver for the finishLesson field.
func (r *mutationResolver) FinishLesson(ctx context.Context, id gqlid.Base64ID, input FinishLessonInput) (*FinishLessonResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	lessonID, err := gqlid.NewLessonIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("lesson_id", lessonID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	lessonObj, err := r.client.Lesson.Get(ctx, *lessonID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("lesson not found")
			return nil, fmt.Errorf("lesson not found")
		}
		logger.Error("failed to get lesson from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	unitObj, err := lessonObj.Unit(ctx)
	if err != nil {
		logger.Error("failed to get unit from db", zap.Error(err), zap.Int64("unit_id", lessonObj.UnitID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	// log meditation record
	journalRecord, err := r.client.JournalRecord.Create().
		SetUserID(authenticatedUser.ID).
		SetLessonID(lessonObj.ID).
		SetDateTime(input.DateTime).
		SetDuration(int(math.Round(float64(input.Duration)/60) * 60)).
		SetNote(input.Note).
		Save(ctx)
	if err != nil {
		logger.Error("failed to log user progress", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	// save user progress on lessons
	nextProgress, isNew, isFinished, err := r.lessonProgress.FinishLesson(ctx, lessonObj, authenticatedUser, input.DateTime)
	if err != nil {
		logger.Error("failed to finish lesson", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	var nextLesson *ent.Lesson
	if nextProgress != nil {
		nextLesson, err = r.client.Lesson.Get(ctx, nextProgress.LessonID)
		if err != nil {
			logger.Error("failed to get next lesson", zap.Error(err))
			return nil, fmt.Errorf("internal server error")
		}
	}

	if isFinished {
		go func() {
			allLessons, err := r.client.Lesson.Query().
				Select(lesson.FieldID, lesson.FieldType).
				Where(lesson.UnitID(lessonObj.UnitID)).
				Order(ent.Asc(lesson.FieldOrder)).
				All(ctx)
			if err != nil {
				logger.Error("failed to get all lessons", zap.Error(err))
				return
			}

			lessonsProgress, err := r.client.UserProgress.Query().
				Select(userprogress.FieldID, userprogress.FieldLessonID, userprogress.FieldProgress, userprogress.FieldFinishedAt).
				Where(userprogress.UserID(authenticatedUser.ID), userprogress.UnitID(lessonObj.UnitID)).
				All(ctx)
			if err != nil {
				logger.Error("failed to get user progress", zap.Error(err))
				return
			}

			progressMap := make(map[gqlid.LessonID]*ent.UserProgress)
			for _, p := range lessonsProgress {
				progressMap[p.LessonID] = p
			}

			var (
				guided  []discord.LessonState
				mastery []discord.LessonState
			)
			for _, l := range allLessons {
				var state discord.LessonState // -1: not started, 0: in progress, 1: finished, 2: current lesson
				if l.ID.ID == lessonObj.ID.ID {
					state = discord.LessonCurrent
				} else {
					p := progressMap[l.ID]
					if p == nil {
						state = discord.LessonNotStarted
					} else if p.FinishedAt != nil {
						state = discord.LessonFinished
					} else if p.Progress > 0 {
						state = discord.LessonInProgress
					} else {
						state = discord.LessonNotStarted
					}
				}
				switch l.Type {
				case property.LessonGuided:
					guided = append(guided, state)
				case property.LessonMastery:
					mastery = append(mastery, state)
				}
			}

			r.discord.FinishLesson(ctx, authenticatedUser.DisplayName, lessonObj.Title, unitObj.Title, input.Duration, isNew, guided, mastery)
		}()
	}

	return &FinishLessonResult{
		Lesson:        lessonObj,
		NextLesson:    nextLesson,
		JournalRecord: journalRecord,
	}, nil
}

// DownloadContent is the resolver for the downloadContent field.
func (r *mutationResolver) DownloadContent(ctx context.Context, id gqlid.Base64ID, input DownloadContentInput) (*DownloadContentResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	contentID, err := gqlid.NewContentIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("content_id", contentID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	contentObj, err := r.client.Content.Get(ctx, *contentID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content not found")
			return nil, fmt.Errorf("content not found")
		}
		logger.Error("failed to get content from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if input.Finished {
		go r.discord.DownloadContentFinish(ctx, authenticatedUser.DisplayName, contentObj.Title)
	} else {
		go r.discord.DownloadContentStart(ctx, authenticatedUser.DisplayName, contentObj.Title)
	}

	return &DownloadContentResult{Success: true}, nil
}

// ResetContentProgress is the resolver for the resetContentProgress field.
func (r *mutationResolver) ResetContentProgress(ctx context.Context, id gqlid.Base64ID, input ResetContentProgressInput) (*ent.Content, error) {
	if !input.Confirm {
		return nil, fmt.Errorf("need user confirm")
	}

	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	contentID, err := gqlid.NewContentIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("content_id", contentID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	contentObj, err := r.client.Content.Get(ctx, *contentID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content not found")
			return nil, fmt.Errorf("content not found")
		}
		logger.Error("failed to get content from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	// reset content progress
	err = r.contentProgress.ResetContentProgress(ctx, contentObj, authenticatedUser)
	if err != nil {
		logger.Error("failed to reset content progress", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	go r.discord.ResetContentProgress(ctx, authenticatedUser.DisplayName, contentObj.Title)

	return contentObj, nil
}

// SaveContentEpisodeProgress is the resolver for the saveContentEpisodeProgress field.
func (r *mutationResolver) SaveContentEpisodeProgress(ctx context.Context, id gqlid.Base64ID, input SaveContentEpisodeProgressInput) (bool, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return false, nil
	}

	episodeID, err := gqlid.NewContentEpisodeIDFromBase64(&id)
	if err != nil {
		return false, err
	}

	logger := r.logger.With(zap.Int64("episode_id", episodeID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	episodeObj, err := r.client.ContentEpisode.Get(ctx, *episodeID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content episode not found")
			return false, fmt.Errorf("content episode not found")
		}
		logger.Error("failed to get content episode from db", zap.Error(err))
		return false, fmt.Errorf("internal server error")
	}

	// save content episode progress
	_, err = r.contentProgress.SaveEpisodeProgress(ctx, episodeObj, authenticatedUser, int64(input.Progress))
	if err != nil {
		logger.Error("failed to save content episode progress", zap.Error(err))
		return false, fmt.Errorf("internal server error")
	}

	return true, nil
}

// DownloadContentEpisode is the resolver for the downloadContentEpisode field.
func (r *mutationResolver) DownloadContentEpisode(ctx context.Context, id gqlid.Base64ID, input DownloadContentEpisodeInput) (*DownloadContentEpisodeResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	episodeID, err := gqlid.NewContentEpisodeIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("episode_id", episodeID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	episodeObj, err := r.client.ContentEpisode.Get(ctx, *episodeID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content episode not found")
			return nil, fmt.Errorf("content episode not found")
		}
		logger.Error("failed to get content episode from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	contentObj, err := episodeObj.Content(ctx)
	if err != nil {
		logger.Error("failed to get content from db", zap.Error(err), zap.Int64("content_id", episodeObj.ContentID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	if input.Finished {
		go r.discord.DownloadContentEpisodeFinish(ctx, authenticatedUser.DisplayName, episodeObj.Title, contentObj.Title)
	} else {
		go r.discord.DownloadContentEpisodeStart(ctx, authenticatedUser.DisplayName, episodeObj.Title, contentObj.Title)
	}

	return &DownloadContentEpisodeResult{Success: true}, nil
}

// ResetContentEpisodeProgress is the resolver for the resetContentEpisodeProgress field.
func (r *mutationResolver) ResetContentEpisodeProgress(ctx context.Context, id gqlid.Base64ID, input ResetContentEpisodeProgressInput) (*ent.ContentEpisode, error) {
	if !input.Confirm {
		return nil, fmt.Errorf("need user confirm")
	}

	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	episodeID, err := gqlid.NewContentEpisodeIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("episode_id", episodeID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	episodeObj, err := r.client.ContentEpisode.Get(ctx, *episodeID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content episode not found")
			return nil, fmt.Errorf("content episode not found")
		}
		logger.Error("failed to get content episode from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	contentObj, err := episodeObj.Content(ctx)
	if err != nil {
		logger.Error("failed to get content from db", zap.Error(err), zap.Int64("content_id", episodeObj.ContentID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	// reset content episode progress
	err = r.contentProgress.ResetEpisodeProgress(ctx, episodeObj, authenticatedUser)
	if err != nil {
		logger.Error("failed to reset content episode progress", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if contentObj.EpisodesCount == 1 {
		go r.discord.ResetSingleEpisodeProgress(ctx, authenticatedUser.DisplayName, episodeObj.Title)
	} else {
		go r.discord.ResetContentEpisodeProgress(ctx, authenticatedUser.DisplayName, episodeObj.Title, contentObj.Title)
	}

	return episodeObj, nil
}

// FinishContentEpisode is the resolver for the finishContentEpisode field.
func (r *mutationResolver) FinishContentEpisode(ctx context.Context, id gqlid.Base64ID, input FinishContentEpisodeInput) (*FinishContentEpisodeResult, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		return nil, nil
	}

	episodeID, err := gqlid.NewContentEpisodeIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	logger := r.logger.With(zap.Int64("episode_id", episodeID.ID), zap.Int64("user_id", authenticatedUser.ID.ID))

	episodeObj, err := r.client.ContentEpisode.Get(ctx, *episodeID)
	if err != nil {
		if ent.IsNotFound(err) {
			logger.Warn("content episode not found")
			return nil, fmt.Errorf("content episode not found")
		}
		logger.Error("failed to get content episode from db", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	contentObj, err := episodeObj.Content(ctx)
	if err != nil {
		logger.Error("failed to get content from db", zap.Error(err), zap.Int64("content_id", episodeObj.ContentID.ID))
		return nil, fmt.Errorf("internal server error")
	}

	// save user progress on lessons
	nextEpisode, err := r.contentProgress.FinishEpisode(ctx, episodeObj, authenticatedUser, input.DateTime)
	if err != nil {
		logger.Error("failed to finish content episode", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	var contentType discord.ContentType
	switch episodeObj.Type {
	case property.ContentAudio:
		contentType = discord.AudioContent
	case property.ContentVideo:
		contentType = discord.VideoContent
	default:
		logger.Error("unknown content type", zap.String("type", string(episodeObj.Type)))
	}

	if contentObj.EpisodesCount == 1 {
		go r.discord.
			FinishSingleEpisode(ctx, authenticatedUser.DisplayName, episodeObj.Title, contentType)
	} else {
		go r.discord.
			FinishContentEpisode(ctx, authenticatedUser.DisplayName, episodeObj.Title, contentObj.Title, contentType)
	}

	return &FinishContentEpisodeResult{
		Episode:     episodeObj,
		NextEpisode: nextEpisode,
	}, nil
}

// CreateJournalRecord is the resolver for the createJournalRecord field.
func (r *mutationResolver) CreateJournalRecord(ctx context.Context, input CreateJournalRecordInput) (*ent.JournalRecord, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		r.logger.Error("failed to get user from context", zap.Error(err))
		return nil, fmt.Errorf("user is not authorized")
	}
	logger := r.logger.With(zap.Int64("user_id", authenticatedUser.ID.ID))

	dateTime := time.Now().UTC()
	if input.DateTime != nil {
		dateTime = *input.DateTime
	}
	dateTime = dateTime.Truncate(time.Second)
	duration := int(math.Round(float64(input.Duration)/60) * 60)

	journalRecords, err := r.client.JournalRecord.Query().
		Where(
			journalrecord.UserIDEQ(authenticatedUser.ID),
			journalrecord.DateTimeGTE(dateTime.Add(-time.Second*15)),
			journalrecord.DateTimeLTE(dateTime.Add(time.Second*15)),
			journalrecord.DurationEQ(duration),
		).
		All(ctx)
	if err != nil {
		logger.Error("failed to check if journal record exists", zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	var journalRecord *ent.JournalRecord
	if len(journalRecords) == 0 {
		journalRecord, err = r.client.JournalRecord.Create().
			SetUser(authenticatedUser).
			SetDateTime(dateTime).
			SetDuration(duration).
			SetNote(input.Note).
			Save(ctx)
		if err != nil {
			logger.Error("failed to create journal record", zap.Error(err))
			return nil, fmt.Errorf("internal server error")
		}

		if input.DateTime == nil {
			go r.discord.FinishTimerMeditation(ctx, authenticatedUser.DisplayName, input.Duration)
		} else {
			go r.discord.CreateJournalRecord(ctx, authenticatedUser.DisplayName, input.Duration)
		}
	} else {
		journalRecord = journalRecords[0]
	}

	return journalRecord, nil
}

// UpdateJournalRecord is the resolver for the updateJournalRecord field.
func (r *mutationResolver) UpdateJournalRecord(ctx context.Context, id gqlid.Base64ID, input UpdateJournalRecordInput) (*ent.JournalRecord, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		r.logger.Error("failed to get user from context", zap.Error(err))
		return nil, fmt.Errorf("user is not authorized")
	}

	recordID, err := gqlid.NewJournalRecordIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	record, err := r.client.JournalRecord.Get(ctx, *recordID)
	if err != nil {
		if ent.IsNotFound(err) {
			r.logger.Error("record not found", zap.Int64("record_id", recordID.ID))
			return nil, fmt.Errorf("record not found")
		}
		r.logger.Error("failed to get record from db", zap.Int64("record_id", recordID.ID), zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if record.UserID != authenticatedUser.ID {
		r.logger.Error("failed to update journal record: user is not an owner")
		return nil, fmt.Errorf("record not found")
	}

	var (
		recordUpdate = record.Update()
		doUpdate     = false
	)

	if input.DateTime != nil {
		recordUpdate = recordUpdate.SetDateTime(*input.DateTime)
		doUpdate = true
	}

	if input.Duration != nil {
		recordUpdate = recordUpdate.SetDuration(int(math.Round(float64(*input.Duration)/60) * 60))
		doUpdate = true
	}

	if input.Note != nil {
		recordUpdate = recordUpdate.SetNote(*input.Note)
		doUpdate = true
	}

	if doUpdate {
		record, err = recordUpdate.Save(ctx)
		if err != nil {
			r.logger.Error("failed to update journal record", zap.Int64("record_id", recordID.ID), zap.Error(err))
			return nil, fmt.Errorf("internal server error")
		}
	}

	return record, nil
}

// DeleteJournalRecord is the resolver for the deleteJournalRecord field.
func (r *mutationResolver) DeleteJournalRecord(ctx context.Context, id gqlid.Base64ID) (*ent.JournalRecord, error) {
	authenticatedUser, err := authctx.GetUser(ctx)
	if err != nil {
		r.logger.Error("failed to get user from context", zap.Error(err))
		return nil, fmt.Errorf("user is not authorized")
	}

	recordID, err := gqlid.NewJournalRecordIDFromBase64(&id)
	if err != nil {
		return nil, err
	}

	record, err := r.client.JournalRecord.Get(ctx, *recordID)
	if err != nil {
		if ent.IsNotFound(err) {
			r.logger.Error("record not found", zap.Int64("record_id", recordID.ID))
			return nil, fmt.Errorf("record not found")
		}
		r.logger.Error("failed to get record from db", zap.Int64("record_id", recordID.ID), zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	if record.UserID != authenticatedUser.ID {
		r.logger.Error("failed to update journal record: user is not an owner")
		return nil, fmt.Errorf("record not found")
	}

	err = r.client.JournalRecord.DeleteOne(record).Exec(ctx)
	if err != nil {
		r.logger.Error("failed to delete journal record", zap.Int64("record_id", recordID.ID), zap.Error(err))
		return nil, fmt.Errorf("internal server error")
	}

	return record, nil
}

// Mutation returns MutationResolver implementation.
func (r *Resolver) Mutation() MutationResolver { return &mutationResolver{r} }

type mutationResolver struct{ *Resolver }
