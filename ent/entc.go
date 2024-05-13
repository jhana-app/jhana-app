//go:build ignore

package main

import (
	"log"

	"entgo.io/contrib/entgql"
	"entgo.io/ent/entc"
	"entgo.io/ent/entc/gen"
)

func main() {
	ex, err := entgql.NewExtension(
		entgql.WithConfigPath("../gql/gqlgen.yml"),
		entgql.WithSchemaGenerator(),
		entgql.WithSchemaPath("../gql/schema/ent.graphql"),
		entgql.WithWhereInputs(true),
		entgql.WithNodeDescriptor(true),
	)
	if err != nil {
		log.Fatalf("creating entgql extension: %v", err)
	}

	gqlConfig := &gen.Config{
		Features: []gen.Feature{
			gen.FeatureModifier,
			gen.FeatureVersionedMigration,
			gen.FeatureSnapshot,
		},
	}
	if err := entc.Generate("./schema", gqlConfig, entc.Extensions(ex)); err != nil {
		log.Fatalf("running ent codegen: %v", err)
	}
}
