// Code generated by ent, DO NOT EDIT.

package lessonaudio

import (
	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
)

const (
	// Label holds the string label denoting the lessonaudio type in the database.
	Label = "lesson_audio"
	// FieldID holds the string denoting the id field in the database.
	FieldID = "id"
	// FieldLessonID holds the string denoting the lesson_id field in the database.
	FieldLessonID = "lesson_id"
	// FieldAudioURL holds the string denoting the audiourl field in the database.
	FieldAudioURL = "audio_url"
	// FieldDuration holds the string denoting the duration field in the database.
	FieldDuration = "duration"
	// EdgeLesson holds the string denoting the lesson edge name in mutations.
	EdgeLesson = "lesson"
	// Table holds the table name of the lessonaudio in the database.
	Table = "lesson_audios"
	// LessonTable is the table that holds the lesson relation/edge.
	LessonTable = "lesson_audios"
	// LessonInverseTable is the table name for the Lesson entity.
	// It exists in this package in order to avoid circular dependency with the "lesson" package.
	LessonInverseTable = "lessons"
	// LessonColumn is the table column denoting the lesson relation/edge.
	LessonColumn = "lesson_id"
)

// Columns holds all SQL columns for lessonaudio fields.
var Columns = []string{
	FieldID,
	FieldLessonID,
	FieldAudioURL,
	FieldDuration,
}

// ValidColumn reports if the column name is valid (part of the table columns).
func ValidColumn(column string) bool {
	for i := range Columns {
		if column == Columns[i] {
			return true
		}
	}
	return false
}

var (
	// DurationValidator is a validator for the "duration" field. It is called by the builders before save.
	DurationValidator func(int) error
)

// OrderOption defines the ordering options for the LessonAudio queries.
type OrderOption func(*sql.Selector)

// ByID orders the results by the id field.
func ByID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldID, opts...).ToFunc()
}

// ByLessonID orders the results by the lesson_id field.
func ByLessonID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldLessonID, opts...).ToFunc()
}

// ByAudioURL orders the results by the audioURL field.
func ByAudioURL(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldAudioURL, opts...).ToFunc()
}

// ByDuration orders the results by the duration field.
func ByDuration(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldDuration, opts...).ToFunc()
}

// ByLessonField orders the results by lesson field.
func ByLessonField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newLessonStep(), sql.OrderByField(field, opts...))
	}
}
func newLessonStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(LessonInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, false, LessonTable, LessonColumn),
	)
}
