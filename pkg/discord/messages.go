package discord

import (
	"context"
	"fmt"
	"strings"

	"github.com/jhana-app/jhana-app/pkg/to"

	"github.com/gtuk/discordwebhook"
)

const (
	messageDownloadUnitStart            = "📲 %s began downloading %s."
	messageDownloadUnitFinish           = "📲 %s downloaded %s."
	messageResetUnitProgress            = "⏮️ %s reset progress for %s."
	messageDownloadLessonStart          = "📲 %s began downloading %s - %s."
	messageDownloadLessonFinish         = "📲 %s downloaded %s - %s."
	messageResetLessonProgress          = "⏪ %s reset progress for %s - %s."
	messageFinishLesson                 = "🎉 %s completed %s - %s (%s)."
	messageFinishLessonAgain            = "🎉 %s completed %s - %s one more time (%s)."
	messageDownloadContentStart         = "📲 %s began downloading %s."
	messageDownloadContentFinish        = "📲 %s downloaded %s."
	messageResetContentProgress         = "⏮️ %s reset progress for %s."
	messageDownloadContentEpisodeStart  = "📲 %s began downloading %s - %s."
	messageDownloadContentEpisodeFinish = "📲 %s downloaded %s - %s."
	messageResetContentEpisodeProgress  = "⏪ %s reset progress for %s - %s."
	messageFinishContentEpisodeAudio    = "🎧 %s completed %s - %s."
	messageFinishContentEpisodeVideo    = "📺 %s completed %s - %s."
	messageDownloadSingleEpisodeStart   = "📲 %s began downloading %s."
	messageDownloadSingleEpisodeFinish  = "📲 %s downloaded %s."
	messageResetSingleEpisodeProgress   = "⏪ %s reset progress for %s."
	messageFinishSingleEpisodeAudio     = "🎧 %s completed %s."
	messageFinishSingleEpisodeVideo     = "📺 %s completed %s."
	messageCreateJournalRecord          = "📝 %s added new journal record (%s)."
	messageFinishTimerMeditation        = "🧘 %s completed timer meditation (%s)."
)

type ContentType int

// -1: not started, 0: in progress, 1: finished, 2: current lesson.
type LessonState int

const (
	LessonNotStarted LessonState = -1
	LessonInProgress LessonState = 0
	LessonFinished   LessonState = 1
	LessonCurrent    LessonState = 2
)

const (
	AudioContent ContentType = iota
	VideoContent
)

func (c client) DownloadUnitStart(ctx context.Context, user, unit string) {
	message := fmt.Sprintf(messageDownloadUnitStart, user, unit)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadUnitFinish(ctx context.Context, user, unit string) {
	message := fmt.Sprintf(messageDownloadUnitFinish, user, unit)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) ResetUnitProgress(ctx context.Context, user, unit string) {
	message := fmt.Sprintf(messageResetUnitProgress, user, unit)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadLessonStart(ctx context.Context, user, lesson, unit string) {
	message := fmt.Sprintf(messageDownloadLessonStart, user, unit, lesson)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadLessonFinish(ctx context.Context, user, lesson, unit string) {
	message := fmt.Sprintf(messageDownloadLessonFinish, user, unit, lesson)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) ResetLessonProgress(ctx context.Context, user, lesson, unit string) {
	message := fmt.Sprintf(messageResetLessonProgress, user, unit, lesson)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) FinishLesson(ctx context.Context, user, lesson, unit string, seconds int, isNew bool, guidedLessons, masteryLessons []LessonState) {
	var message string
	if isNew {
		message = fmt.Sprintf(messageFinishLesson, user, unit, lesson, to.StringFromSeconds(seconds, true))
	} else {
		message = fmt.Sprintf(messageFinishLessonAgain, user, unit, lesson, to.StringFromSeconds(seconds, true))
	}

	var (
		guildedProgress []string
		masteryFinished int
		isMastery       bool
		fields          []discordwebhook.Field
	)

	for _, l := range guidedLessons {
		guildedProgress = append(guildedProgress, lessonStateToIcon(l))
	}
	// -1: not started, 0: in progress, 1: finished, 2: current lesson
	for _, l := range masteryLessons {
		if l > LessonInProgress {
			masteryFinished++
		}
		if l == LessonCurrent {
			isMastery = true
		}
	}

	if isMastery {
		fields = append(fields, discordwebhook.Field{
			Name:   to.Ptr("Mastering progress"),
			Value:  to.Ptr(fmt.Sprintf("%d/%d", masteryFinished, len(masteryLessons))),
			Inline: to.Ptr(true),
		})
	} else {
		fields = append(fields, discordwebhook.Field{
			Name:   to.Ptr("Lessons progress"),
			Value:  to.Ptr(strings.Join(guildedProgress, "")),
			Inline: to.Ptr(true),
		})
	}

	c.SendMessage(ctx, &discordwebhook.Message{
		Content: &message,
		Embeds:  to.Ptr([]discordwebhook.Embed{{Fields: &fields}}),
	})
}

func (c client) DownloadContentStart(ctx context.Context, user, content string) {
	message := fmt.Sprintf(messageDownloadContentStart, user, content)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadContentFinish(ctx context.Context, user, content string) {
	message := fmt.Sprintf(messageDownloadContentFinish, user, content)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) ResetContentProgress(ctx context.Context, user, content string) {
	message := fmt.Sprintf(messageResetContentProgress, user, content)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadContentEpisodeStart(ctx context.Context, user, episode, content string) {
	message := fmt.Sprintf(messageDownloadContentEpisodeStart, user, content, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadContentEpisodeFinish(ctx context.Context, user, episode, content string) {
	message := fmt.Sprintf(messageDownloadContentEpisodeFinish, user, content, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) ResetContentEpisodeProgress(ctx context.Context, user, episode, content string) {
	message := fmt.Sprintf(messageResetContentEpisodeProgress, user, content, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) FinishContentEpisode(ctx context.Context, user, episode, content string, contentType ContentType) {
	var message string
	switch contentType {
	case AudioContent:
		message = fmt.Sprintf(messageFinishContentEpisodeAudio, user, content, episode)
	case VideoContent:
		message = fmt.Sprintf(messageFinishContentEpisodeVideo, user, content, episode)
	default:
		return
	}
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadSingleEpisodeStart(ctx context.Context, user, episode string) {
	message := fmt.Sprintf(messageDownloadSingleEpisodeStart, user, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) DownloadSingleEpisodeFinish(ctx context.Context, user, episode string) {
	message := fmt.Sprintf(messageDownloadSingleEpisodeFinish, user, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) ResetSingleEpisodeProgress(ctx context.Context, user, episode string) {
	message := fmt.Sprintf(messageResetSingleEpisodeProgress, user, episode)
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) FinishSingleEpisode(ctx context.Context, user, episode string, contentType ContentType) {
	var message string
	switch contentType {
	case AudioContent:
		message = fmt.Sprintf(messageFinishSingleEpisodeAudio, user, episode)
	case VideoContent:
		message = fmt.Sprintf(messageFinishSingleEpisodeVideo, user, episode)
	default:
		return
	}
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) CreateJournalRecord(ctx context.Context, user string, seconds int) {
	message := fmt.Sprintf(messageCreateJournalRecord, user, to.StringFromSeconds(seconds, true))
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func (c client) FinishTimerMeditation(ctx context.Context, user string, seconds int) {
	message := fmt.Sprintf(messageFinishTimerMeditation, user, to.StringFromSeconds(seconds, true))
	c.SendMessage(ctx, &discordwebhook.Message{Content: &message})
}

func lessonStateToIcon(state LessonState) string {
	switch state {
	case LessonInProgress:
		return "🟡"
	case LessonFinished:
		return "🔵"
	case LessonCurrent:
		return "🟢"
	case LessonNotStarted:
		fallthrough
	default:
		return "⚪️"
	}
}
