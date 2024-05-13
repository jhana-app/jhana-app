package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// Course holds the schema definition for the Course entity.
type Course struct {
	ent.Schema
}

// Fields of the Course.
func (Course) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.CourseID{}),
		field.String("iconImage").
			NotEmpty(),
		field.String("coverImage").
			NotEmpty(),
		field.String("title").
			NotEmpty(),
		field.String("description").
			NotEmpty(),
		field.String("color").
			NotEmpty(),
		field.Bool("active"),
		field.Int("order").
			Positive().
			Annotations(
				entgql.OrderField("ORDER"),
			),
	}
}

// Edges of the Course.
func (Course) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("units", Unit.Type).
			Ref("course").
			Annotations(entgql.RelayConnection()),
	}
}

// Annotations returns Course annotations.
func (Course) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
