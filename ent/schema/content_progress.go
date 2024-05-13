package schema

import (
	"time"

	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
)

// ContentProgress holds the schema definition for the ContentProgress entity.
type ContentProgress struct {
	ent.Schema
}

// Fields of the ContentProgress.
func (ContentProgress) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.ContentProgressID{}),
		field.Int64("user_id").
			GoType(gqlid.UserID{}).
			Immutable(),
		field.Int64("content_id").
			GoType(gqlid.ContentID{}).
			Immutable(),
		field.Int64("episode_id").
			GoType(gqlid.ContentEpisodeID{}).
			Immutable(),
		field.Enum("content_type").
			GoType(property.ContentType("")).
			Immutable(),
		field.Int64("progress").
			Default(0),
		field.Time("finishedAt").
			Nillable().
			Optional().
			Default(nil),
		field.Time("createdAt").
			Default(time.Now).
			Immutable(),
		field.Time("updatedAt").
			Default(time.Now),
	}
}

// Edges of the ContentProgress.
func (ContentProgress) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Field("user_id").
			Unique().
			Required().
			Immutable(),
		edge.To("content", Content.Type).
			Field("content_id").
			Unique().
			Required().
			Immutable(),
		edge.To("episode", ContentEpisode.Type).
			Field("episode_id").
			Unique().
			Required().
			Immutable(),
	}
}

// Annotations returns ContentProgress annotations.
func (ContentProgress) Annotations() []schema.Annotation {
	return []schema.Annotation{
		// entgql.RelayConnection(),
		// entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
