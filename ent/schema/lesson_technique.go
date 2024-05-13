package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// LessonTechnique holds the edge schema definition of the Lesson -> Technique relationship.
type LessonTechnique struct {
	ent.Schema
}

// Fields of the LessonTechnique.
func (LessonTechnique) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("lesson_id").
			GoType(gqlid.LessonID{}).
			Immutable(),
		field.Int64("technique_id").
			GoType(gqlid.TechniqueID{}).
			Immutable(),
		field.Int64("order").
			Immutable(),
	}
}

// Edges of the LessonTechnique.
func (LessonTechnique) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("lesson", Lesson.Type).
			Field("lesson_id").
			Unique().
			Required().
			Immutable(),
		edge.To("technique", Technique.Type).
			Field("technique_id").
			Unique().
			Required().
			Immutable(),
	}
}

func (LessonTechnique) Annotations() []schema.Annotation {
	return []schema.Annotation{
		field.ID("lesson_id", "technique_id"),
	}
}
