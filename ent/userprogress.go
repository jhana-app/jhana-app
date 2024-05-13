// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"
	"time"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/course"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/unit"
	"github.com/jhana-app/jhana-app/ent/user"
	"github.com/jhana-app/jhana-app/ent/userprogress"
)

// UserProgress is the model entity for the UserProgress schema.
type UserProgress struct {
	config `json:"-"`
	// ID of the ent.
	ID gqlid.UserProgressID `json:"id,omitempty"`
	// UserID holds the value of the "user_id" field.
	UserID gqlid.UserID `json:"user_id,omitempty"`
	// CourseID holds the value of the "course_id" field.
	CourseID gqlid.CourseID `json:"course_id,omitempty"`
	// UnitID holds the value of the "unit_id" field.
	UnitID gqlid.UnitID `json:"unit_id,omitempty"`
	// LessonID holds the value of the "lesson_id" field.
	LessonID gqlid.LessonID `json:"lesson_id,omitempty"`
	// LessonType holds the value of the "lesson_type" field.
	LessonType property.LessonType `json:"lesson_type,omitempty"`
	// IsLast holds the value of the "isLast" field.
	IsLast bool `json:"isLast,omitempty"`
	// IsNext holds the value of the "isNext" field.
	IsNext bool `json:"isNext,omitempty"`
	// Progress holds the value of the "progress" field.
	Progress int64 `json:"progress,omitempty"`
	// FinishedAt holds the value of the "finishedAt" field.
	FinishedAt *time.Time `json:"finishedAt,omitempty"`
	// CreatedAt holds the value of the "createdAt" field.
	CreatedAt time.Time `json:"createdAt,omitempty"`
	// UpdatedAt holds the value of the "updatedAt" field.
	UpdatedAt time.Time `json:"updatedAt,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the UserProgressQuery when eager-loading is set.
	Edges        UserProgressEdges `json:"edges"`
	selectValues sql.SelectValues
}

// UserProgressEdges holds the relations/edges for other nodes in the graph.
type UserProgressEdges struct {
	// User holds the value of the user edge.
	User *User `json:"user,omitempty"`
	// Course holds the value of the course edge.
	Course *Course `json:"course,omitempty"`
	// Unit holds the value of the unit edge.
	Unit *Unit `json:"unit,omitempty"`
	// Lesson holds the value of the lesson edge.
	Lesson *Lesson `json:"lesson,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [4]bool
	// totalCount holds the count of the edges above.
	totalCount [4]map[string]int
}

// UserOrErr returns the User value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UserProgressEdges) UserOrErr() (*User, error) {
	if e.User != nil {
		return e.User, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: user.Label}
	}
	return nil, &NotLoadedError{edge: "user"}
}

// CourseOrErr returns the Course value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UserProgressEdges) CourseOrErr() (*Course, error) {
	if e.Course != nil {
		return e.Course, nil
	} else if e.loadedTypes[1] {
		return nil, &NotFoundError{label: course.Label}
	}
	return nil, &NotLoadedError{edge: "course"}
}

// UnitOrErr returns the Unit value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UserProgressEdges) UnitOrErr() (*Unit, error) {
	if e.Unit != nil {
		return e.Unit, nil
	} else if e.loadedTypes[2] {
		return nil, &NotFoundError{label: unit.Label}
	}
	return nil, &NotLoadedError{edge: "unit"}
}

// LessonOrErr returns the Lesson value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UserProgressEdges) LessonOrErr() (*Lesson, error) {
	if e.Lesson != nil {
		return e.Lesson, nil
	} else if e.loadedTypes[3] {
		return nil, &NotFoundError{label: lesson.Label}
	}
	return nil, &NotLoadedError{edge: "lesson"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*UserProgress) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case userprogress.FieldCourseID:
			values[i] = new(gqlid.CourseID)
		case userprogress.FieldLessonID:
			values[i] = new(gqlid.LessonID)
		case userprogress.FieldUnitID:
			values[i] = new(gqlid.UnitID)
		case userprogress.FieldUserID:
			values[i] = new(gqlid.UserID)
		case userprogress.FieldID:
			values[i] = new(gqlid.UserProgressID)
		case userprogress.FieldIsLast, userprogress.FieldIsNext:
			values[i] = new(sql.NullBool)
		case userprogress.FieldProgress:
			values[i] = new(sql.NullInt64)
		case userprogress.FieldLessonType:
			values[i] = new(sql.NullString)
		case userprogress.FieldFinishedAt, userprogress.FieldCreatedAt, userprogress.FieldUpdatedAt:
			values[i] = new(sql.NullTime)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the UserProgress fields.
func (up *UserProgress) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case userprogress.FieldID:
			if value, ok := values[i].(*gqlid.UserProgressID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				up.ID = *value
			}
		case userprogress.FieldUserID:
			if value, ok := values[i].(*gqlid.UserID); !ok {
				return fmt.Errorf("unexpected type %T for field user_id", values[i])
			} else if value != nil {
				up.UserID = *value
			}
		case userprogress.FieldCourseID:
			if value, ok := values[i].(*gqlid.CourseID); !ok {
				return fmt.Errorf("unexpected type %T for field course_id", values[i])
			} else if value != nil {
				up.CourseID = *value
			}
		case userprogress.FieldUnitID:
			if value, ok := values[i].(*gqlid.UnitID); !ok {
				return fmt.Errorf("unexpected type %T for field unit_id", values[i])
			} else if value != nil {
				up.UnitID = *value
			}
		case userprogress.FieldLessonID:
			if value, ok := values[i].(*gqlid.LessonID); !ok {
				return fmt.Errorf("unexpected type %T for field lesson_id", values[i])
			} else if value != nil {
				up.LessonID = *value
			}
		case userprogress.FieldLessonType:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field lesson_type", values[i])
			} else if value.Valid {
				up.LessonType = property.LessonType(value.String)
			}
		case userprogress.FieldIsLast:
			if value, ok := values[i].(*sql.NullBool); !ok {
				return fmt.Errorf("unexpected type %T for field isLast", values[i])
			} else if value.Valid {
				up.IsLast = value.Bool
			}
		case userprogress.FieldIsNext:
			if value, ok := values[i].(*sql.NullBool); !ok {
				return fmt.Errorf("unexpected type %T for field isNext", values[i])
			} else if value.Valid {
				up.IsNext = value.Bool
			}
		case userprogress.FieldProgress:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field progress", values[i])
			} else if value.Valid {
				up.Progress = value.Int64
			}
		case userprogress.FieldFinishedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field finishedAt", values[i])
			} else if value.Valid {
				up.FinishedAt = new(time.Time)
				*up.FinishedAt = value.Time
			}
		case userprogress.FieldCreatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field createdAt", values[i])
			} else if value.Valid {
				up.CreatedAt = value.Time
			}
		case userprogress.FieldUpdatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field updatedAt", values[i])
			} else if value.Valid {
				up.UpdatedAt = value.Time
			}
		default:
			up.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the UserProgress.
// This includes values selected through modifiers, order, etc.
func (up *UserProgress) Value(name string) (ent.Value, error) {
	return up.selectValues.Get(name)
}

// QueryUser queries the "user" edge of the UserProgress entity.
func (up *UserProgress) QueryUser() *UserQuery {
	return NewUserProgressClient(up.config).QueryUser(up)
}

// QueryCourse queries the "course" edge of the UserProgress entity.
func (up *UserProgress) QueryCourse() *CourseQuery {
	return NewUserProgressClient(up.config).QueryCourse(up)
}

// QueryUnit queries the "unit" edge of the UserProgress entity.
func (up *UserProgress) QueryUnit() *UnitQuery {
	return NewUserProgressClient(up.config).QueryUnit(up)
}

// QueryLesson queries the "lesson" edge of the UserProgress entity.
func (up *UserProgress) QueryLesson() *LessonQuery {
	return NewUserProgressClient(up.config).QueryLesson(up)
}

// Update returns a builder for updating this UserProgress.
// Note that you need to call UserProgress.Unwrap() before calling this method if this UserProgress
// was returned from a transaction, and the transaction was committed or rolled back.
func (up *UserProgress) Update() *UserProgressUpdateOne {
	return NewUserProgressClient(up.config).UpdateOne(up)
}

// Unwrap unwraps the UserProgress entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (up *UserProgress) Unwrap() *UserProgress {
	_tx, ok := up.config.driver.(*txDriver)
	if !ok {
		panic("ent: UserProgress is not a transactional entity")
	}
	up.config.driver = _tx.drv
	return up
}

// String implements the fmt.Stringer.
func (up *UserProgress) String() string {
	var builder strings.Builder
	builder.WriteString("UserProgress(")
	builder.WriteString(fmt.Sprintf("id=%v, ", up.ID))
	builder.WriteString("user_id=")
	builder.WriteString(fmt.Sprintf("%v", up.UserID))
	builder.WriteString(", ")
	builder.WriteString("course_id=")
	builder.WriteString(fmt.Sprintf("%v", up.CourseID))
	builder.WriteString(", ")
	builder.WriteString("unit_id=")
	builder.WriteString(fmt.Sprintf("%v", up.UnitID))
	builder.WriteString(", ")
	builder.WriteString("lesson_id=")
	builder.WriteString(fmt.Sprintf("%v", up.LessonID))
	builder.WriteString(", ")
	builder.WriteString("lesson_type=")
	builder.WriteString(fmt.Sprintf("%v", up.LessonType))
	builder.WriteString(", ")
	builder.WriteString("isLast=")
	builder.WriteString(fmt.Sprintf("%v", up.IsLast))
	builder.WriteString(", ")
	builder.WriteString("isNext=")
	builder.WriteString(fmt.Sprintf("%v", up.IsNext))
	builder.WriteString(", ")
	builder.WriteString("progress=")
	builder.WriteString(fmt.Sprintf("%v", up.Progress))
	builder.WriteString(", ")
	if v := up.FinishedAt; v != nil {
		builder.WriteString("finishedAt=")
		builder.WriteString(v.Format(time.ANSIC))
	}
	builder.WriteString(", ")
	builder.WriteString("createdAt=")
	builder.WriteString(up.CreatedAt.Format(time.ANSIC))
	builder.WriteString(", ")
	builder.WriteString("updatedAt=")
	builder.WriteString(up.UpdatedAt.Format(time.ANSIC))
	builder.WriteByte(')')
	return builder.String()
}

// UserProgresses is a parsable slice of UserProgress.
type UserProgresses []*UserProgress
