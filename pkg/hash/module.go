package hash

import (
	"go.uber.org/fx"
)

var Module = fx.Options(
	fx.Provide(newHash),
)
