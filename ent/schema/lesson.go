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

// Lesson holds the schema definition for the Lesson entity.
type Lesson struct {
	ent.Schema
}

// Fields of the Lesson.
func (Lesson) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.LessonID{}),
		field.Int64("unit_id").
			GoType(gqlid.UnitID{}).
			Immutable(),
		field.Enum("type").
			GoType(property.LessonType("")),
		field.String("iconImage").
			NotEmpty(),
		field.String("coverImage").
			NotEmpty(),
		field.String("title").
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

// Edges of the Lesson.
func (Lesson) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("unit", Unit.Type).
			Field("unit_id").
			Unique().
			Required().
			Immutable(),
		edge.To("techniques", Technique.Type).
			Through("lessonTechniques", LessonTechnique.Type).
			Annotations(entgql.Skip(entgql.SkipAll)),
		edge.From("audios", LessonAudio.Type).
			Ref("lesson").
			Annotations(entgql.Skip(entgql.SkipAll)),
	}
}

// Annotations returns Lesson annotations.
func (Lesson) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
