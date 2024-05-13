// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"
	"time"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/journalrecord"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/user"
)

// JournalRecord is the model entity for the JournalRecord schema.
type JournalRecord struct {
	config `json:"-"`
	// ID of the ent.
	ID gqlid.JournalRecordID `json:"id,omitempty"`
	// UserID holds the value of the "user_id" field.
	UserID gqlid.UserID `json:"user_id,omitempty"`
	// LessonID holds the value of the "lesson_id" field.
	LessonID gqlid.LessonID `json:"lesson_id,omitempty"`
	// DateTime holds the value of the "dateTime" field.
	DateTime time.Time `json:"dateTime,omitempty"`
	// Duration holds the value of the "duration" field.
	Duration int `json:"duration,omitempty"`
	// Note holds the value of the "note" field.
	Note string `json:"note,omitempty"`
	// CreatedAt holds the value of the "createdAt" field.
	CreatedAt time.Time `json:"createdAt,omitempty"`
	// UpdatedAt holds the value of the "updatedAt" field.
	UpdatedAt time.Time `json:"updatedAt,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the JournalRecordQuery when eager-loading is set.
	Edges        JournalRecordEdges `json:"edges"`
	selectValues sql.SelectValues
}

// JournalRecordEdges holds the relations/edges for other nodes in the graph.
type JournalRecordEdges struct {
	// User holds the value of the user edge.
	User *User `json:"user,omitempty"`
	// Lesson holds the value of the lesson edge.
	Lesson *Lesson `json:"lesson,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [2]bool
	// totalCount holds the count of the edges above.
	totalCount [2]map[string]int
}

// UserOrErr returns the User value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e JournalRecordEdges) UserOrErr() (*User, error) {
	if e.User != nil {
		return e.User, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: user.Label}
	}
	return nil, &NotLoadedError{edge: "user"}
}

// LessonOrErr returns the Lesson value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e JournalRecordEdges) LessonOrErr() (*Lesson, error) {
	if e.Lesson != nil {
		return e.Lesson, nil
	} else if e.loadedTypes[1] {
		return nil, &NotFoundError{label: lesson.Label}
	}
	return nil, &NotLoadedError{edge: "lesson"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*JournalRecord) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case journalrecord.FieldID:
			values[i] = new(gqlid.JournalRecordID)
		case journalrecord.FieldLessonID:
			values[i] = new(gqlid.LessonID)
		case journalrecord.FieldUserID:
			values[i] = new(gqlid.UserID)
		case journalrecord.FieldDuration:
			values[i] = new(sql.NullInt64)
		case journalrecord.FieldNote:
			values[i] = new(sql.NullString)
		case journalrecord.FieldDateTime, journalrecord.FieldCreatedAt, journalrecord.FieldUpdatedAt:
			values[i] = new(sql.NullTime)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the JournalRecord fields.
func (jr *JournalRecord) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case journalrecord.FieldID:
			if value, ok := values[i].(*gqlid.JournalRecordID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				jr.ID = *value
			}
		case journalrecord.FieldUserID:
			if value, ok := values[i].(*gqlid.UserID); !ok {
				return fmt.Errorf("unexpected type %T for field user_id", values[i])
			} else if value != nil {
				jr.UserID = *value
			}
		case journalrecord.FieldLessonID:
			if value, ok := values[i].(*gqlid.LessonID); !ok {
				return fmt.Errorf("unexpected type %T for field lesson_id", values[i])
			} else if value != nil {
				jr.LessonID = *value
			}
		case journalrecord.FieldDateTime:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field dateTime", values[i])
			} else if value.Valid {
				jr.DateTime = value.Time
			}
		case journalrecord.FieldDuration:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field duration", values[i])
			} else if value.Valid {
				jr.Duration = int(value.Int64)
			}
		case journalrecord.FieldNote:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field note", values[i])
			} else if value.Valid {
				jr.Note = value.String
			}
		case journalrecord.FieldCreatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field createdAt", values[i])
			} else if value.Valid {
				jr.CreatedAt = value.Time
			}
		case journalrecord.FieldUpdatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field updatedAt", values[i])
			} else if value.Valid {
				jr.UpdatedAt = value.Time
			}
		default:
			jr.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the JournalRecord.
// This includes values selected through modifiers, order, etc.
func (jr *JournalRecord) Value(name string) (ent.Value, error) {
	return jr.selectValues.Get(name)
}

// QueryUser queries the "user" edge of the JournalRecord entity.
func (jr *JournalRecord) QueryUser() *UserQuery {
	return NewJournalRecordClient(jr.config).QueryUser(jr)
}

// QueryLesson queries the "lesson" edge of the JournalRecord entity.
func (jr *JournalRecord) QueryLesson() *LessonQuery {
	return NewJournalRecordClient(jr.config).QueryLesson(jr)
}

// Update returns a builder for updating this JournalRecord.
// Note that you need to call JournalRecord.Unwrap() before calling this method if this JournalRecord
// was returned from a transaction, and the transaction was committed or rolled back.
func (jr *JournalRecord) Update() *JournalRecordUpdateOne {
	return NewJournalRecordClient(jr.config).UpdateOne(jr)
}

// Unwrap unwraps the JournalRecord entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (jr *JournalRecord) Unwrap() *JournalRecord {
	_tx, ok := jr.config.driver.(*txDriver)
	if !ok {
		panic("ent: JournalRecord is not a transactional entity")
	}
	jr.config.driver = _tx.drv
	return jr
}

// String implements the fmt.Stringer.
func (jr *JournalRecord) String() string {
	var builder strings.Builder
	builder.WriteString("JournalRecord(")
	builder.WriteString(fmt.Sprintf("id=%v, ", jr.ID))
	builder.WriteString("user_id=")
	builder.WriteString(fmt.Sprintf("%v", jr.UserID))
	builder.WriteString(", ")
	builder.WriteString("lesson_id=")
	builder.WriteString(fmt.Sprintf("%v", jr.LessonID))
	builder.WriteString(", ")
	builder.WriteString("dateTime=")
	builder.WriteString(jr.DateTime.Format(time.ANSIC))
	builder.WriteString(", ")
	builder.WriteString("duration=")
	builder.WriteString(fmt.Sprintf("%v", jr.Duration))
	builder.WriteString(", ")
	builder.WriteString("note=")
	builder.WriteString(jr.Note)
	builder.WriteString(", ")
	builder.WriteString("createdAt=")
	builder.WriteString(jr.CreatedAt.Format(time.ANSIC))
	builder.WriteString(", ")
	builder.WriteString("updatedAt=")
	builder.WriteString(jr.UpdatedAt.Format(time.ANSIC))
	builder.WriteByte(')')
	return builder.String()
}

// JournalRecords is a parsable slice of JournalRecord.
type JournalRecords []*JournalRecord
