package cfg

import (
	"fmt"
	"time"
)

type HTTP struct {
	Host            string        `env:"HOST,default=0.0.0.0"`
	Port            int32         `env:"PORT,default=3000"`
	ReadTimeout     time.Duration `env:"READ_TIMEOUT,default=30s"`
	WriteTimeout    time.Duration `env:"WRITE_TIMEOUT,default=30s"`
	GraphiqlEnabled bool          `env:"GRAPHIQL_ENABLED,default=false"`
	GraphqlDebug    bool          `env:"GRAPHQL_DEBUG,default=false"`
	WebsiteURL      string        `env:"WEBSITE_URL,default=https://jhana.app"`

	HealthCheck HealthCheck `env:",prefix=HEALTHCHECK_"`
}

func (c HTTP) Addr() string {
	return fmt.Sprintf("%s:%d", c.Host, c.Port)
}
