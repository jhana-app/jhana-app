// Code generated by github.com/99designs/gqlgen, DO NOT EDIT.

package gql

import (
	"time"

	"github.com/jhana-app/jhana-app/ent"
)

type CreateJournalRecordInput struct {
	DateTime *time.Time `json:"datetime,omitempty"`
	Duration int        `json:"duration"`
	Note     string     `json:"note"`
}

type DownloadContentEpisodeInput struct {
	Finished bool `json:"finished"`
}

type DownloadContentEpisodeResult struct {
	Success bool `json:"success"`
}

type DownloadContentInput struct {
	Finished bool `json:"finished"`
}

type DownloadContentResult struct {
	Success bool `json:"success"`
}

type DownloadLessonInput struct {
	Finished bool `json:"finished"`
}

type DownloadLessonResult struct {
	Success bool `json:"success"`
}

type DownloadUnitInput struct {
	Finished bool `json:"finished"`
}

type DownloadUnitResult struct {
	Success bool `json:"success"`
}

type FinishContentEpisodeInput struct {
	DateTime time.Time `json:"datetime"`
}

type FinishContentEpisodeResult struct {
	Episode     *ent.ContentEpisode `json:"episode"`
	NextEpisode *ent.ContentEpisode `json:"nextEpisode,omitempty"`
}

type FinishLessonInput struct {
	DateTime time.Time `json:"datetime"`
	Duration int       `json:"duration"`
	Note     string    `json:"note"`
}

type FinishLessonResult struct {
	Lesson        *ent.Lesson        `json:"lesson"`
	NextLesson    *ent.Lesson        `json:"nextLesson,omitempty"`
	JournalRecord *ent.JournalRecord `json:"journalRecord"`
}

type MeditationsStats struct {
	HoursTotal         int     `json:"hoursTotal"`
	SessionsTotal      int     `json:"sessionsTotal"`
	CurrentStrike      int     `json:"currentStrike"`
	LastMeditationDate *string `json:"lastMeditationDate,omitempty"`
}

type MeditationsStatsInput struct {
	UserTimezone string `json:"userTimezone"`
}

type RefreshTokenInput struct {
	RefreshToken string `json:"refreshToken"`
}

type RefreshTokenResult struct {
	AccessToken  string `json:"accessToken"`
	RefreshToken string `json:"refreshToken"`
}

type ResetContentEpisodeProgressInput struct {
	Confirm bool `json:"confirm"`
}

type ResetContentProgressInput struct {
	Confirm bool `json:"confirm"`
}

type ResetLessonProgressInput struct {
	Confirm bool `json:"confirm"`
}

type ResetUnitProgressInput struct {
	Confirm bool `json:"confirm"`
}

type SaveContentEpisodeProgressInput struct {
	Progress int `json:"progress"`
}

type SaveLessonProgressInput struct {
	Progress int `json:"progress"`
}

type SignInWithEmailAndPasswordInput struct {
	Email    string `json:"email"`
	Password string `json:"password"`
}

type SignInWithEmailAndPasswordResult struct {
	AccessToken  string    `json:"accessToken"`
	RefreshToken string    `json:"refreshToken"`
	User         *ent.User `json:"user"`
}

type SignOutInput struct {
	RefreshToken string `json:"refreshToken"`
}

type SignUpWithEmailAndPasswordInput struct {
	Email    string  `json:"email"`
	Password string  `json:"password"`
	Name     *string `json:"name,omitempty"`
}

type SignUpWithEmailAndPasswordResult struct {
	AccessToken  string    `json:"accessToken"`
	RefreshToken string    `json:"refreshToken"`
	User         *ent.User `json:"user"`
}

type UpdateJournalRecordInput struct {
	DateTime *time.Time `json:"datetime,omitempty"`
	Duration *int       `json:"duration,omitempty"`
	Note     *string    `json:"note,omitempty"`
}