package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
)

// Content holds the schema definition for the Content entity.
type Content struct {
	ent.Schema
}

// Fields of the Content.
func (Content) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.ContentID{}),
		field.Enum("type").
			GoType(property.ContentType("")),
		field.String("iconImage").
			NotEmpty(),
		field.String("coverImage").
			NotEmpty(),
		field.String("title").
			NotEmpty(),
		field.String("subtitle").
			NotEmpty(),
		field.String("description").
			NotEmpty(),
		field.String("source"),
		field.String("sourceURL"),
		field.String("licence"),
		field.String("licenceURL"),
		field.Bool("isHidden").
			Default(false),
		field.Int("order").
			Positive().
			Annotations(
				entgql.OrderField("ORDER"),
			),
		field.Int("episodesCount").Positive(),
	}
}

// Edges of the Content.
func (Content) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("episodes", ContentEpisode.Type).
			Ref("content").
			Annotations(entgql.RelayConnection()),
	}
}

// Annotations returns Content annotations.
func (Content) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
	}
}
