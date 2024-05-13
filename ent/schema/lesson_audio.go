package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// LessonAudio holds the edge schema definition of the Lesson's audio.
type LessonAudio struct {
	ent.Schema
}

// Fields of the LessonAudio.
func (LessonAudio) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.LessonAudioID{}),
		field.Int64("lesson_id").
			GoType(gqlid.LessonID{}).
			Immutable(),
		field.String("audioURL"),
		field.Int("duration").
			Positive().
			Annotations(
				entgql.OrderField("DURATION"),
			),
	}
}

// Edges of the LessonAudio.
func (LessonAudio) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("lesson", Lesson.Type).
			Field("lesson_id").
			Unique().
			Required().
			Immutable(),
	}
}

func (LessonAudio) Annotations() []schema.Annotation {
	return []schema.Annotation{}
}
