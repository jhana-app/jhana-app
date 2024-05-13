package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// Technique holds the schema definition for the Technique entity.
type Technique struct {
	ent.Schema
}

// Fields of the Technique.
func (Technique) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.TechniqueID{}),
		field.Int64("unit_id").
			GoType(gqlid.UnitID{}).
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
		field.Int("order").
			Positive().
			Annotations(
				entgql.OrderField("ORDER"),
			),
	}
}

// Edges of the Technique.
func (Technique) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("unit", Unit.Type).
			Field("unit_id").
			Unique().
			Required().
			Immutable(),
		edge.From("lessons", Lesson.Type).
			Ref("techniques").
			Through("lessonTechniques", LessonTechnique.Type),
		edge.From("techniques", Unit.Type).
			Ref("techniques").
			Through("unitTechniques", UnitTechnique.Type),
	}
}

// Annotations returns Technique annotations.
func (Technique) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
