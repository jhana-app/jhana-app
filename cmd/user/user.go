package user

import (
	"context"
	"encoding/json"
	"fmt"
	"strconv"

	"github.com/spf13/cobra"
	"go.uber.org/fx"

	"github.com/jhana-app/jhana-app/ent"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/internal/app"
)

func Command() *cobra.Command {
	cmd := &cobra.Command{
		Use:   "user",
		Short: "User management",
	}

	var jsonOutput bool
	getCmd := &cobra.Command{
		Use:   "get [id]",
		Short: "show user by id",
		Args:  cobra.ExactArgs(1),
		RunE: func(cmd *cobra.Command, args []string) error {
			ctx := context.Background()

			userID, parseErr := strconv.ParseInt(args[0], 10, 64)
			if parseErr != nil {
				return fmt.Errorf("can't parse user id: %w", parseErr)
			}

			var client *ent.Client

			if newErr := app.New(fx.Populate(&client)).Start(ctx); newErr != nil {
				return newErr
			}

			user, userErr := client.User.Get(ctx, gqlid.NewUserID(userID))
			if userErr != nil {
				return userErr
			}

			if jsonOutput {
				data, jsonErr := json.Marshal(user) //nolint:musttag // ent generated code
				if jsonErr != nil {
					return jsonErr
				}
				fmt.Println(string(data)) //nolint:forbidigo // print to stdout
			} else {
				fmt.Println(user.String()) //nolint:forbidigo // print to stdout
			}

			return nil
		},
	}
	getCmd.Flags().BoolVar(&jsonOutput, "json", false, "json output")
	cmd.AddCommand(getCmd)

	return cmd
}
