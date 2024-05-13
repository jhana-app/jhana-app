package discord

import (
	"context"

	"github.com/gtuk/discordwebhook"
	"go.uber.org/zap"

	"github.com/jhana-app/jhana-app/cfg"
)

const username = "App"

type Client interface {
	SendMessage(ctx context.Context, message *discordwebhook.Message)
	DownloadUnitStart(ctx context.Context, user, unit string)
	DownloadUnitFinish(ctx context.Context, user, unit string)
	ResetUnitProgress(ctx context.Context, user, unit string)
	DownloadLessonStart(ctx context.Context, user, lesson, unit string)
	DownloadLessonFinish(ctx context.Context, user, lesson, unit string)
	ResetLessonProgress(ctx context.Context, user, lesson, unit string)
	FinishLesson(ctx context.Context, user, lesson, unit string, seconds int, isNew bool, guidedLessons, masteryLessons []LessonState)
	DownloadContentStart(ctx context.Context, user, content string)
	DownloadContentFinish(ctx context.Context, user, content string)
	ResetContentProgress(ctx context.Context, user, content string)
	DownloadContentEpisodeStart(ctx context.Context, user, episode, content string)
	DownloadContentEpisodeFinish(ctx context.Context, user, episode, content string)
	ResetContentEpisodeProgress(ctx context.Context, user, episode, content string)
	FinishContentEpisode(ctx context.Context, user, episode, content string, contentType ContentType)
	DownloadSingleEpisodeStart(ctx context.Context, user, episode string)
	DownloadSingleEpisodeFinish(ctx context.Context, user, episode string)
	ResetSingleEpisodeProgress(ctx context.Context, user, episode string)
	FinishSingleEpisode(ctx context.Context, user, episode string, contentType ContentType)
	CreateJournalRecord(ctx context.Context, user string, seconds int)
	FinishTimerMeditation(ctx context.Context, user string, seconds int)
}

type client struct {
	config cfg.Discord
	logger *zap.Logger
}

// newDiscordClient creates new discord client.
func newDiscordClient(config cfg.Discord, logger *zap.Logger) Client {
	return &client{
		config: config,
		logger: logger,
	}
}

func (c client) SendMessage(ctx context.Context, message *discordwebhook.Message) {
	if !c.config.Enabled {
		c.logger.Debug("Discord is disabled in config")
		return
	}

	if message.Username == nil {
		var messageUserName = username
		message.Username = &messageUserName
	}

	err := discordwebhook.SendMessage(c.config.WebhookURL, *message)
	if err != nil {
		c.logger.Error("Failed to send message to discord", zap.Error(err))
	}
}
