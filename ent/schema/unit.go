package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// Unit holds the schema definition for the Unit entity.
type Unit struct {
	ent.Schema
}

// Fields of the Unit.
func (Unit) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.UnitID{}),
		field.Int64("course_id").
			GoType(gqlid.CourseID{}).
			Immutable(),
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
		field.String("mastering").
			NotEmpty(),
		field.Int("days").
			Positive(),
		field.String("color").
			NotEmpty(),
		field.Int("order").
			Positive().
			Annotations(
				entgql.OrderField("ORDER"),
			),
	}
}

// Edges of the Unit.
func (Unit) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("course", Course.Type).
			Field("course_id").
			Unique().
			Required().
			Immutable(),
		edge.From("lessons", Lesson.Type).
			Ref("unit").
			Annotations(entgql.RelayConnection()),
		edge.To("techniques", Technique.Type).
			Through("unitTechniques", UnitTechnique.Type).
			Annotations(entgql.Skip(entgql.SkipAll)),
	}
}

// Annotations returns Unit annotations.
func (Unit) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
