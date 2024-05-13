package schema

import (
	"time"

	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
)

// UserProgress holds the schema definition for the UserProgress entity.
type UserProgress struct {
	ent.Schema
}

// Fields of the UserProgress.
func (UserProgress) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.UserProgressID{}),
		field.Int64("user_id").
			GoType(gqlid.UserID{}).
			Immutable(),
		field.Int64("course_id").
			GoType(gqlid.CourseID{}).
			Immutable(),
		field.Int64("unit_id").
			GoType(gqlid.UnitID{}).
			Immutable(),
		field.Int64("lesson_id").
			GoType(gqlid.LessonID{}).
			Immutable(),
		field.Enum("lesson_type").
			GoType(property.LessonType("")).
			Immutable(),
		field.Bool("isLast"),
		field.Bool("isNext"),
		field.Int64("progress").
			Default(0),
		field.Time("finishedAt").
			Nillable().
			Optional().
			Default(nil).
			Annotations(
				entgql.OrderField("FINISHED_AT"),
			),
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

// Edges of the UserProgress.
func (UserProgress) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Field("user_id").
			Unique().
			Required().
			Immutable(),
		edge.To("course", Course.Type).
			Field("course_id").
			Unique().
			Required().
			Immutable(),
		edge.To("unit", Unit.Type).
			Field("unit_id").
			Unique().
			Required().
			Immutable(),
		edge.To("lesson", Lesson.Type).
			Field("lesson_id").
			Unique().
			Required().
			Immutable(),
	}
}

// Annotations returns UserProgress annotations.
func (UserProgress) Annotations() []schema.Annotation {
	return []schema.Annotation{
		// entgql.RelayConnection(),
		// entgql.QueryField(),
		// entgql.Mutations(
		//	entgql.MutationCreate(),
		//	entgql.MutationUpdate(),
		// ),
	}
}
