package cfg

import "fmt"

type HealthCheck struct {
	Enabled bool `env:"ENABLED,default=false"`
	Port    int  `env:"PORT,default=5555"`
}

func (c HealthCheck) Addr() string {
	return fmt.Sprintf(":%d", c.Port)
}
