package firebase

import "go.uber.org/fx"

var Module = fx.Options(
	fx.Provide(newFirebase),
	fx.Provide(newFirebaseAuth),
)
