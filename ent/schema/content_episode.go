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

// ContentEpisode holds the schema definition for the ContentEpisode entity.
type ContentEpisode struct {
	ent.Schema
}

// Fields of the ContentEpisode.
func (ContentEpisode) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.ContentEpisodeID{}),
		field.Int64("content_id").
			GoType(gqlid.ContentID{}).
			Immutable(),
		field.Enum("type").
			GoType(property.ContentType("")),
		field.String("title").
			NotEmpty(),
		field.String("subtitle").
			NotEmpty(),
		field.String("description").
			NotEmpty(),
		field.Int("duration").
			Positive(),
		field.String("streamURL"),
		field.String("downloadURL"),
		field.String("source").
			Default(""),
		field.String("sourceURL").
			Default(""),
		field.String("licence").
			Default(""),
		field.String("licenceURL").
			Default(""),
		field.Bool("isHidden").
			Default(false),
		field.Int("order").
			Positive().
			Annotations(
				entgql.OrderField("ORDER"),
			),
	}
}

// Edges of the ContentEpisode.
func (ContentEpisode) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("content", Content.Type).
			Field("content_id").
			Unique().
			Required().
			Immutable(),
	}
}

// Annotations returns ContentEpisode annotations.
func (ContentEpisode) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
