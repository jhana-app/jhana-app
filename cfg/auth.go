package cfg

const (
	AuthMethodLocal    = "local"
	AuthMethodFirebase = "firebase"
)

type Auth struct {
	Method string `env:"METHOD,default=local"`      // supported: local, firebase
	JWTKey string `env:"JWT_KEY"`                   // JWT signing key
	JWTIss string `env:"JWT_ISS,default=jhana.app"` // JWT issuer
}
