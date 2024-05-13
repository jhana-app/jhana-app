package app

import (
	"go.uber.org/fx"

	"github.com/jhana-app/jhana-app/cfg"
	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/dataloaders"
	"github.com/jhana-app/jhana-app/pkg/db"
	"github.com/jhana-app/jhana-app/pkg/discord"
	"github.com/jhana-app/jhana-app/pkg/firebase"
	"github.com/jhana-app/jhana-app/pkg/hash"
	"github.com/jhana-app/jhana-app/pkg/log"
	"github.com/jhana-app/jhana-app/service/auth"
	"github.com/jhana-app/jhana-app/service/contentprogress"
	"github.com/jhana-app/jhana-app/service/lessonprogress"
)

// New returns new fx app with dependencies.
func New(deps ...fx.Option) *fx.App {
	options := []fx.Option{
		auth.Module,
		cfg.Module,
		contentprogress.Module,
		dataloaders.Module,
		db.Module,
		discord.Module,
		ent.Module,
		firebase.Module,
		hash.Module,
		lessonprogress.Module,
		log.Module,
	}
	return fx.New(append(options, deps...)...)
}
