// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/content"
	"github.com/jhana-app/jhana-app/ent/contentepisode"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
)

// ContentEpisode is the model entity for the ContentEpisode schema.
type ContentEpisode struct {
	config `json:"-"`
	// ID of the ent.
	ID gqlid.ContentEpisodeID `json:"id,omitempty"`
	// ContentID holds the value of the "content_id" field.
	ContentID gqlid.ContentID `json:"content_id,omitempty"`
	// Type holds the value of the "type" field.
	Type property.ContentType `json:"type,omitempty"`
	// Title holds the value of the "title" field.
	Title string `json:"title,omitempty"`
	// Subtitle holds the value of the "subtitle" field.
	Subtitle string `json:"subtitle,omitempty"`
	// Description holds the value of the "description" field.
	Description string `json:"description,omitempty"`
	// Duration holds the value of the "duration" field.
	Duration int `json:"duration,omitempty"`
	// StreamURL holds the value of the "streamURL" field.
	StreamURL string `json:"streamURL,omitempty"`
	// DownloadURL holds the value of the "downloadURL" field.
	DownloadURL string `json:"downloadURL,omitempty"`
	// Source holds the value of the "source" field.
	Source string `json:"source,omitempty"`
	// SourceURL holds the value of the "sourceURL" field.
	SourceURL string `json:"sourceURL,omitempty"`
	// Licence holds the value of the "licence" field.
	Licence string `json:"licence,omitempty"`
	// LicenceURL holds the value of the "licenceURL" field.
	LicenceURL string `json:"licenceURL,omitempty"`
	// IsHidden holds the value of the "isHidden" field.
	IsHidden bool `json:"isHidden,omitempty"`
	// Order holds the value of the "order" field.
	Order int `json:"order,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the ContentEpisodeQuery when eager-loading is set.
	Edges        ContentEpisodeEdges `json:"edges"`
	selectValues sql.SelectValues
}

// ContentEpisodeEdges holds the relations/edges for other nodes in the graph.
type ContentEpisodeEdges struct {
	// Content holds the value of the content edge.
	Content *Content `json:"content,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [1]bool
	// totalCount holds the count of the edges above.
	totalCount [1]map[string]int
}

// ContentOrErr returns the Content value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e ContentEpisodeEdges) ContentOrErr() (*Content, error) {
	if e.Content != nil {
		return e.Content, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: content.Label}
	}
	return nil, &NotLoadedError{edge: "content"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*ContentEpisode) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case contentepisode.FieldID:
			values[i] = new(gqlid.ContentEpisodeID)
		case contentepisode.FieldContentID:
			values[i] = new(gqlid.ContentID)
		case contentepisode.FieldIsHidden:
			values[i] = new(sql.NullBool)
		case contentepisode.FieldDuration, contentepisode.FieldOrder:
			values[i] = new(sql.NullInt64)
		case contentepisode.FieldType, contentepisode.FieldTitle, contentepisode.FieldSubtitle, contentepisode.FieldDescription, contentepisode.FieldStreamURL, contentepisode.FieldDownloadURL, contentepisode.FieldSource, contentepisode.FieldSourceURL, contentepisode.FieldLicence, contentepisode.FieldLicenceURL:
			values[i] = new(sql.NullString)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the ContentEpisode fields.
func (ce *ContentEpisode) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case contentepisode.FieldID:
			if value, ok := values[i].(*gqlid.ContentEpisodeID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				ce.ID = *value
			}
		case contentepisode.FieldContentID:
			if value, ok := values[i].(*gqlid.ContentID); !ok {
				return fmt.Errorf("unexpected type %T for field content_id", values[i])
			} else if value != nil {
				ce.ContentID = *value
			}
		case contentepisode.FieldType:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field type", values[i])
			} else if value.Valid {
				ce.Type = property.ContentType(value.String)
			}
		case contentepisode.FieldTitle:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field title", values[i])
			} else if value.Valid {
				ce.Title = value.String
			}
		case contentepisode.FieldSubtitle:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field subtitle", values[i])
			} else if value.Valid {
				ce.Subtitle = value.String
			}
		case contentepisode.FieldDescription:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field description", values[i])
			} else if value.Valid {
				ce.Description = value.String
			}
		case contentepisode.FieldDuration:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field duration", values[i])
			} else if value.Valid {
				ce.Duration = int(value.Int64)
			}
		case contentepisode.FieldStreamURL:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field streamURL", values[i])
			} else if value.Valid {
				ce.StreamURL = value.String
			}
		case contentepisode.FieldDownloadURL:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field downloadURL", values[i])
			} else if value.Valid {
				ce.DownloadURL = value.String
			}
		case contentepisode.FieldSource:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field source", values[i])
			} else if value.Valid {
				ce.Source = value.String
			}
		case contentepisode.FieldSourceURL:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field sourceURL", values[i])
			} else if value.Valid {
				ce.SourceURL = value.String
			}
		case contentepisode.FieldLicence:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field licence", values[i])
			} else if value.Valid {
				ce.Licence = value.String
			}
		case contentepisode.FieldLicenceURL:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field licenceURL", values[i])
			} else if value.Valid {
				ce.LicenceURL = value.String
			}
		case contentepisode.FieldIsHidden:
			if value, ok := values[i].(*sql.NullBool); !ok {
				return fmt.Errorf("unexpected type %T for field isHidden", values[i])
			} else if value.Valid {
				ce.IsHidden = value.Bool
			}
		case contentepisode.FieldOrder:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field order", values[i])
			} else if value.Valid {
				ce.Order = int(value.Int64)
			}
		default:
			ce.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the ContentEpisode.
// This includes values selected through modifiers, order, etc.
func (ce *ContentEpisode) Value(name string) (ent.Value, error) {
	return ce.selectValues.Get(name)
}

// QueryContent queries the "content" edge of the ContentEpisode entity.
func (ce *ContentEpisode) QueryContent() *ContentQuery {
	return NewContentEpisodeClient(ce.config).QueryContent(ce)
}

// Update returns a builder for updating this ContentEpisode.
// Note that you need to call ContentEpisode.Unwrap() before calling this method if this ContentEpisode
// was returned from a transaction, and the transaction was committed or rolled back.
func (ce *ContentEpisode) Update() *ContentEpisodeUpdateOne {
	return NewContentEpisodeClient(ce.config).UpdateOne(ce)
}

// Unwrap unwraps the ContentEpisode entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (ce *ContentEpisode) Unwrap() *ContentEpisode {
	_tx, ok := ce.config.driver.(*txDriver)
	if !ok {
		panic("ent: ContentEpisode is not a transactional entity")
	}
	ce.config.driver = _tx.drv
	return ce
}

// String implements the fmt.Stringer.
func (ce *ContentEpisode) String() string {
	var builder strings.Builder
	builder.WriteString("ContentEpisode(")
	builder.WriteString(fmt.Sprintf("id=%v, ", ce.ID))
	builder.WriteString("content_id=")
	builder.WriteString(fmt.Sprintf("%v", ce.ContentID))
	builder.WriteString(", ")
	builder.WriteString("type=")
	builder.WriteString(fmt.Sprintf("%v", ce.Type))
	builder.WriteString(", ")
	builder.WriteString("title=")
	builder.WriteString(ce.Title)
	builder.WriteString(", ")
	builder.WriteString("subtitle=")
	builder.WriteString(ce.Subtitle)
	builder.WriteString(", ")
	builder.WriteString("description=")
	builder.WriteString(ce.Description)
	builder.WriteString(", ")
	builder.WriteString("duration=")
	builder.WriteString(fmt.Sprintf("%v", ce.Duration))
	builder.WriteString(", ")
	builder.WriteString("streamURL=")
	builder.WriteString(ce.StreamURL)
	builder.WriteString(", ")
	builder.WriteString("downloadURL=")
	builder.WriteString(ce.DownloadURL)
	builder.WriteString(", ")
	builder.WriteString("source=")
	builder.WriteString(ce.Source)
	builder.WriteString(", ")
	builder.WriteString("sourceURL=")
	builder.WriteString(ce.SourceURL)
	builder.WriteString(", ")
	builder.WriteString("licence=")
	builder.WriteString(ce.Licence)
	builder.WriteString(", ")
	builder.WriteString("licenceURL=")
	builder.WriteString(ce.LicenceURL)
	builder.WriteString(", ")
	builder.WriteString("isHidden=")
	builder.WriteString(fmt.Sprintf("%v", ce.IsHidden))
	builder.WriteString(", ")
	builder.WriteString("order=")
	builder.WriteString(fmt.Sprintf("%v", ce.Order))
	builder.WriteByte(')')
	return builder.String()
}

// ContentEpisodes is a parsable slice of ContentEpisode.
type ContentEpisodes []*ContentEpisode