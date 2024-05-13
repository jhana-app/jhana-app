package main

import (
	"log"

	"github.com/spf13/cobra"

	"github.com/jhana-app/jhana-app/cmd/api"
	"github.com/jhana-app/jhana-app/cmd/user"
)

func root() *cobra.Command {
	var cmd = &cobra.Command{
		Version:      "0.0.1",
		Use:          "lotus",
		Short:        "The main cli interface to work with lotus",
		SilenceUsage: true,
	}

	cmd.AddCommand(
		api.Command(),
		user.Command(),
	)

	return cmd
}

func main() {
	if err := root().Execute(); err != nil {
		log.Fatal(err)
	}
}
