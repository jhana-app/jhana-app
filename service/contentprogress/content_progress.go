package contentprogress

import (
	"context"
	"fmt"
	"time"

	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/gqlid"

	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/contentepisode"
	"github.com/jhana-app/jhana-app/ent/contentprogress"
	"github.com/jhana-app/jhana-app/ent/unit"
)

type ContentProgress interface {
	SaveEpisodeProgress(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User, progress int64) (*ent.ContentProgress, error)
	ResetEpisodeProgress(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User) error
	FinishEpisode(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User, dt time.Time) (*ent.ContentEpisode, error)
	ResetContentProgress(ctx context.Context, contentObj *ent.Content, userObj *ent.User) error
	NextEpisode(ctx context.Context, userObj *ent.User, episodeObj *ent.ContentEpisode) (*ent.ContentEpisode, error)
}

type service struct {
	client *ent.Client
	logger *zap.Logger
}

func newContentProgress(client *ent.Client, logger *zap.Logger) ContentProgress {
	return &service{
		client: client,
		logger: logger,
	}
}

func (s *service) SaveEpisodeProgress(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User, progress int64) (*ent.ContentProgress, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("episode_id", episodeObj.ID.ID), zap.Int64("content_id", episodeObj.ContentID.ID))

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

	progressObj, err := tx.ContentProgress.Query().
		Where(contentprogress.UserID(userObj.ID), contentprogress.EpisodeID(episodeObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get content episode progress from db", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get content episode progress from db: %w", err))
	}

	if progressObj != nil {
		if progressObj, err = progressObj.Update().SetProgress(progress).SetUpdatedAt(time.Now()).Save(ctx); err != nil {
			logger.Error("failed to update content episode progress", zap.Error(err))
			return nil, rollback(fmt.Errorf("failed to update content episode progress: %w", err))
		}
	} else if progress > 0 {
		progressObj, err = tx.ContentProgress.Create().
			SetUserID(userObj.ID).
			SetContentID(episodeObj.ContentID).
			SetEpisodeID(episodeObj.ID).
			SetContentType(episodeObj.Type).
			SetProgress(progress).
			Save(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to create content progress: %w", err)
		}
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to commit transaction: %w", err)
	}

	if progressObj != nil {
		progressObj.Unwrap()
	}

	return progressObj, nil
}

func (s *service) ResetEpisodeProgress(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User) error {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("episode_id", episodeObj.ID.ID), zap.Int64("content_id", episodeObj.ContentID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	progressObj, err := tx.ContentProgress.Query().
		Where(contentprogress.UserID(userObj.ID), contentprogress.EpisodeID(episodeObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get content episode progress from db", zap.Error(err))
		return rollback(fmt.Errorf("failed to get content episode progress from db: %w", err))
	}

	if progressObj != nil {
		if err = tx.ContentProgress.DeleteOneID(progressObj.ID).Exec(ctx); err != nil {
			logger.Error("failed to delete content episode progress", zap.Error(err))
			return rollback(fmt.Errorf("failed to delete content episode progress: %w", err))
		}
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return fmt.Errorf("failed to commit transaction: %w", err)
	}

	return nil
}

func (s *service) FinishEpisode(ctx context.Context, episodeObj *ent.ContentEpisode, userObj *ent.User, dt time.Time) (*ent.ContentEpisode, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("episode_id", episodeObj.ID.ID), zap.Int64("content_id", episodeObj.ContentID.ID))

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

	progressObj, err := tx.ContentProgress.Query().
		Where(contentprogress.UserID(userObj.ID), contentprogress.EpisodeID(episodeObj.ID)).
		Only(ctx)
	if err != nil && !ent.IsNotFound(err) {
		logger.Error("failed to get content episode progress from db", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get content episode progress from db: %w", err))
	}

	if progressObj != nil {
		if err = tx.ContentProgress.UpdateOne(progressObj).SetProgress(0).SetFinishedAt(dt).SetUpdatedAt(time.Now()).Exec(ctx); err != nil {
			logger.Error("failed to update content episode progress", zap.Error(err))
			return nil, rollback(fmt.Errorf("failed to update content episode progress: %w", err))
		}
	} else {
		progressObj, err = tx.ContentProgress.Create().
			SetUserID(userObj.ID).
			SetContentID(episodeObj.ContentID).
			SetEpisodeID(episodeObj.ID).
			SetContentType(episodeObj.Type).
			SetFinishedAt(dt).
			SetUpdatedAt(time.Now()).
			Save(ctx)
		if err != nil {
			return nil, rollback(fmt.Errorf("failed to create content progress: %w", err))
		}
	}

	nextEpisode, err := s.getNextEpisode(ctx, tx, userObj, episodeObj)
	if err != nil {
		logger.Error("failed to get next content episode progress", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get next content episode progress: %w", err))
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to commit transaction: %w", err)
	}

	if progressObj != nil {
		progressObj.Unwrap()
	}
	if nextEpisode != nil {
		nextEpisode.Unwrap()
	}

	return nextEpisode, nil
}

func (s *service) ResetContentProgress(ctx context.Context, contentObj *ent.Content, userObj *ent.User) error {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID), zap.Int64("content_id", contentObj.ID.ID))

	// use transaction
	tx, err := s.client.Tx(ctx)
	if err != nil {
		logger.Error("failed to begin transaction", zap.Error(err))
		return fmt.Errorf("failed to begin transaction: %w", err)
	}

	rollback := func(rErr error) error {
		if txErr := tx.Rollback(); txErr != nil {
			rErr = fmt.Errorf("%w: %w", rErr, txErr)
		}
		return rErr
	}

	_, err = tx.ContentProgress.Delete().Where(contentprogress.UserID(userObj.ID), contentprogress.ContentID(contentObj.ID)).Exec(ctx)
	if err != nil {
		logger.Error("failed to delete content user progress", zap.Error(err))
		return rollback(fmt.Errorf("failed to delete content user progress: %w", err))
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return fmt.Errorf("failed to commit transaction: %w", err)
	}

	return nil
}

func (s *service) NextEpisode(ctx context.Context, userObj *ent.User, episodeObj *ent.ContentEpisode) (*ent.ContentEpisode, error) {
	logger := s.logger.With(zap.Int64("user_id", userObj.ID.ID))
	if episodeObj != nil {
		logger = logger.With(zap.Int64("episode_id", episodeObj.ID.ID), zap.Int64("content_id", episodeObj.ContentID.ID))
	}

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

	nextEpisode, err := s.getNextEpisode(ctx, tx, userObj, episodeObj)
	if err != nil {
		logger.Error("failed to get next content episode progress", zap.Error(err))
		return nil, rollback(fmt.Errorf("failed to get next content episode progress: %w", err))
	}

	if err = tx.Commit(); err != nil {
		logger.Error("failed to commit transaction", zap.Error(err))
		return nil, fmt.Errorf("failed to commit transaction: %w", err)
	}

	if nextEpisode != nil {
		nextEpisode.Unwrap()
	}

	return nextEpisode, nil
}

func (s *service) getNextEpisode(
	ctx context.Context,
	tx *ent.Tx,
	authenticatedUser *ent.User,
	episodeObj *ent.ContentEpisode,
) (*ent.ContentEpisode, error) {
	var (
		finishedEpisodeIDs []gqlid.ContentEpisodeID
		nextEpisode        *ent.ContentEpisode
		err                error
	)

	items, err := s.client.ContentProgress.Query().
		Unique(true).
		Modify(func(s *sql.Selector) {
			// NOTE(vlad): we use 'Modify' instead of 'Select' here
			// because Ent will add "id" field to the query by default which breaks DISTINCT query
			s.Select(contentprogress.FieldEpisodeID)
		}).
		Where(contentprogress.UserID(authenticatedUser.ID), contentprogress.FinishedAtNotNil()).
		All(ctx)
	if err != nil {
		s.logger.Error("failed to get finished episodes", zap.Error(err), zap.Int64("user_id", authenticatedUser.ID.ID))
		return nil, fmt.Errorf("internal server error")
	}
	for _, item := range items {
		finishedEpisodeIDs = append(finishedEpisodeIDs, item.EpisodeID)
	}

	if episodeObj != nil {
		nextEpisode, err = tx.ContentEpisode.Query().
			Where(
				contentepisode.ContentID(episodeObj.ContentID),
				contentepisode.IsHidden(false),
				contentepisode.OrderGT(episodeObj.Order),
				contentepisode.IDNotIn(finishedEpisodeIDs...),
			).
			Order(ent.Asc(unit.FieldOrder)).
			First(ctx)
		if err != nil && !ent.IsNotFound(err) {
			return nil, fmt.Errorf("failed to get next content episode: %w", err)
		}
	}

	if nextEpisode == nil {
		nextEpisode, err = tx.ContentEpisode.Query().
			Where(
				contentepisode.ContentID(episodeObj.ContentID),
				contentepisode.IsHidden(false),
				contentepisode.IDNotIn(finishedEpisodeIDs...),
			).
			Order(ent.Asc(unit.FieldOrder)).
			First(ctx)
		if err != nil && !ent.IsNotFound(err) {
			return nil, fmt.Errorf("failed to get next content episode: %w", err)
		}
	}

	return nextEpisode, nil
}
