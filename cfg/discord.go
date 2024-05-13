package cfg

type Discord struct {
	Enabled    bool   `env:"ENABLED"`
	WebhookURL string `env:"WEBHOOK_URL"`
}
