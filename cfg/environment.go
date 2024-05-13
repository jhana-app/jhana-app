package cfg

type Environment string

func (c Environment) IsDevelopment() bool {
	return c == "development"
}

func (c Environment) IsProduction() bool {
	return c == "production"
}
