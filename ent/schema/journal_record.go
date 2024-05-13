package schema

import (
	"time"

	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// JournalRecord holds the schema definition for the JournalRecord entity.
type JournalRecord struct {
	ent.Schema
}

// Fields of the JournalRecord.
func (JournalRecord) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.JournalRecordID{}),
		field.Int64("user_id").
			GoType(gqlid.UserID{}).
			Immutable(),
		field.Int64("lesson_id").
			GoType(gqlid.LessonID{}).
			Optional().
			Immutable(),
		field.Time("dateTime").
			Annotations(
				entgql.OrderField("DATE_TIME"),
			),
		field.Int("duration"),
		field.String("note"),
		field.Time("createdAt").
			Default(time.Now).
			Immutable().
			Annotations(
				entgql.OrderField("CREATED_AT"),
			),
		field.Time("updatedAt").
			Default(time.Now).
			UpdateDefault(time.Now),
	}
}

// Edges of the JournalRecord.
func (JournalRecord) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Field("user_id").
			Unique().
			Required().
			Immutable(),
		edge.To("lesson", Lesson.Type).
			Field("lesson_id").
			Unique().
			Immutable(),
	}
}

// Annotations returns JournalRecord annotations.
func (JournalRecord) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.RelayConnection(),
		entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
