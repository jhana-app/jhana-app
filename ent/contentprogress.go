// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"
	"time"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/content"
	"github.com/jhana-app/jhana-app/ent/contentepisode"
	"github.com/jhana-app/jhana-app/ent/contentprogress"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/user"
)

// ContentProgress is the model entity for the ContentProgress schema.
type ContentProgress struct {
	config `json:"-"`
	// ID of the ent.
	ID gqlid.ContentProgressID `json:"id,omitempty"`
	// UserID holds the value of the "user_id" field.
	UserID gqlid.UserID `json:"user_id,omitempty"`
	// ContentID holds the value of the "content_id" field.
	ContentID gqlid.ContentID `json:"content_id,omitempty"`
	// EpisodeID holds the value of the "episode_id" field.
	EpisodeID gqlid.ContentEpisodeID `json:"episode_id,omitempty"`
	// ContentType holds the value of the "content_type" field.
	ContentType property.ContentType `json:"content_type,omitempty"`
	// Progress holds the value of the "progress" field.
	Progress int64 `json:"progress,omitempty"`
	// FinishedAt holds the value of the "finishedAt" field.
	FinishedAt *time.Time `json:"finishedAt,omitempty"`
	// CreatedAt holds the value of the "createdAt" field.
	CreatedAt time.Time `json:"createdAt,omitempty"`
	// UpdatedAt holds the value of the "updatedAt" field.
	UpdatedAt time.Time `json:"updatedAt,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the ContentProgressQuery when eager-loading is set.
	Edges        ContentProgressEdges `json:"edges"`
	selectValues sql.SelectValues
}

// ContentProgressEdges holds the relations/edges for other nodes in the graph.
type ContentProgressEdges struct {
	// User holds the value of the user edge.
	User *User `json:"user,omitempty"`
	// Content holds the value of the content edge.
	Content *Content `json:"content,omitempty"`
	// Episode holds the value of the episode edge.
	Episode *ContentEpisode `json:"episode,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [3]bool
	// totalCount holds the count of the edges above.
	totalCount [3]map[string]int
}

// UserOrErr returns the User value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e ContentProgressEdges) UserOrErr() (*User, error) {
	if e.User != nil {
		return e.User, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: user.Label}
	}
	return nil, &NotLoadedError{edge: "user"}
}

// ContentOrErr returns the Content value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e ContentProgressEdges) ContentOrErr() (*Content, error) {
	if e.Content != nil {
		return e.Content, nil
	} else if e.loadedTypes[1] {
		return nil, &NotFoundError{label: content.Label}
	}
	return nil, &NotLoadedError{edge: "content"}
}

// EpisodeOrErr returns the Episode value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e ContentProgressEdges) EpisodeOrErr() (*ContentEpisode, error) {
	if e.Episode != nil {
		return e.Episode, nil
	} else if e.loadedTypes[2] {
		return nil, &NotFoundError{label: contentepisode.Label}
	}
	return nil, &NotLoadedError{edge: "episode"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*ContentProgress) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case contentprogress.FieldEpisodeID:
			values[i] = new(gqlid.ContentEpisodeID)
		case contentprogress.FieldContentID:
			values[i] = new(gqlid.ContentID)
		case contentprogress.FieldID:
			values[i] = new(gqlid.ContentProgressID)
		case contentprogress.FieldUserID:
			values[i] = new(gqlid.UserID)
		case contentprogress.FieldProgress:
			values[i] = new(sql.NullInt64)
		case contentprogress.FieldContentType:
			values[i] = new(sql.NullString)
		case contentprogress.FieldFinishedAt, contentprogress.FieldCreatedAt, contentprogress.FieldUpdatedAt:
			values[i] = new(sql.NullTime)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the ContentProgress fields.
func (cp *ContentProgress) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case contentprogress.FieldID:
			if value, ok := values[i].(*gqlid.ContentProgressID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				cp.ID = *value
			}
		case contentprogress.FieldUserID:
			if value, ok := values[i].(*gqlid.UserID); !ok {
				return fmt.Errorf("unexpected type %T for field user_id", values[i])
			} else if value != nil {
				cp.UserID = *value
			}
		case contentprogress.FieldContentID:
			if value, ok := values[i].(*gqlid.ContentID); !ok {
				return fmt.Errorf("unexpected type %T for field content_id", values[i])
			} else if value != nil {
				cp.ContentID = *value
			}
		case contentprogress.FieldEpisodeID:
			if value, ok := values[i].(*gqlid.ContentEpisodeID); !ok {
				return fmt.Errorf("unexpected type %T for field episode_id", values[i])
			} else if value != nil {
				cp.EpisodeID = *value
			}
		case contentprogress.FieldContentType:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field content_type", values[i])
			} else if value.Valid {
				cp.ContentType = property.ContentType(value.String)
			}
		case contentprogress.FieldProgress:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field progress", values[i])
			} else if value.Valid {
				cp.Progress = value.Int64
			}
		case contentprogress.FieldFinishedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field finishedAt", values[i])
			} else if value.Valid {
				cp.FinishedAt = new(time.Time)
				*cp.FinishedAt = value.Time
			}
		case contentprogress.FieldCreatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field createdAt", values[i])
			} else if value.Valid {
				cp.CreatedAt = value.Time
			}
		case contentprogress.FieldUpdatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field updatedAt", values[i])
			} else if value.Valid {
				cp.UpdatedAt = value.Time
			}
		default:
			cp.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the ContentProgress.
// This includes values selected through modifiers, order, etc.
func (cp *ContentProgress) Value(name string) (ent.Value, error) {
	return cp.selectValues.Get(name)
}

// QueryUser queries the "user" edge of the ContentProgress entity.
func (cp *ContentProgress) QueryUser() *UserQuery {
	return NewContentProgressClient(cp.config).QueryUser(cp)
}

// QueryContent queries the "content" edge of the ContentProgress entity.
func (cp *ContentProgress) QueryContent() *ContentQuery {
	return NewContentProgressClient(cp.config).QueryContent(cp)
}

// QueryEpisode queries the "episode" edge of the ContentProgress entity.
func (cp *ContentProgress) QueryEpisode() *ContentEpisodeQuery {
	return NewContentProgressClient(cp.config).QueryEpisode(cp)
}

// Update returns a builder for updating this ContentProgress.
// Note that you need to call ContentProgress.Unwrap() before calling this method if this ContentProgress
// was returned from a transaction, and the transaction was committed or rolled back.
func (cp *ContentProgress) Update() *ContentProgressUpdateOne {
	return NewContentProgressClient(cp.config).UpdateOne(cp)
}

// Unwrap unwraps the ContentProgress entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (cp *ContentProgress) Unwrap() *ContentProgress {
	_tx, ok := cp.config.driver.(*txDriver)
	if !ok {
		panic("ent: ContentProgress is not a transactional entity")
	}
	cp.config.driver = _tx.drv
	return cp
}

// String implements the fmt.Stringer.
func (cp *ContentProgress) String() string {
	var builder strings.Builder
	builder.WriteString("ContentProgress(")
	builder.WriteString(fmt.Sprintf("id=%v, ", cp.ID))
	builder.WriteString("user_id=")
	builder.WriteString(fmt.Sprintf("%v", cp.UserID))
	builder.WriteString(", ")
	builder.WriteString("content_id=")
	builder.WriteString(fmt.Sprintf("%v", cp.ContentID))
	builder.WriteString(", ")
	builder.WriteString("episode_id=")
	builder.WriteString(fmt.Sprintf("%v", cp.EpisodeID))
	builder.WriteString(", ")
	builder.WriteString("content_type=")
	builder.WriteString(fmt.Sprintf("%v", cp.ContentType))
	builder.WriteString(", ")
	builder.WriteString("progress=")
	builder.WriteString(fmt.Sprintf("%v", cp.Progress))
	builder.WriteString(", ")
	if v := cp.FinishedAt; v != nil {
		builder.WriteString("finishedAt=")
		builder.WriteString(v.Format(time.ANSIC))
	}
	builder.WriteString(", ")
	builder.WriteString("createdAt=")
	builder.WriteString(cp.CreatedAt.Format(time.ANSIC))
	builder.WriteString(", ")
	builder.WriteString("updatedAt=")
	builder.WriteString(cp.UpdatedAt.Format(time.ANSIC))
	builder.WriteByte(')')
	return builder.String()
}

// ContentProgresses is a parsable slice of ContentProgress.
type ContentProgresses []*ContentProgress