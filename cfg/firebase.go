package cfg

type Firebase struct {
	Enabled         bool   `env:"ENABLED,default=false"`
	ProjectID       string `env:"PROJECT_ID"`
	CredentialsFile string `env:"CREDENTIALS_FILE"`
}
