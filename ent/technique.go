// Code generated by ent, DO NOT EDIT.

package ent

import (
	"fmt"
	"strings"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/technique"
	"github.com/jhana-app/jhana-app/ent/unit"
)

// Technique is the model entity for the Technique schema.
type Technique struct {
	config `json:"-"`
	// ID of the ent.
	ID gqlid.TechniqueID `json:"id,omitempty"`
	// UnitID holds the value of the "unit_id" field.
	UnitID gqlid.UnitID `json:"unit_id,omitempty"`
	// IconImage holds the value of the "iconImage" field.
	IconImage string `json:"iconImage,omitempty"`
	// CoverImage holds the value of the "coverImage" field.
	CoverImage string `json:"coverImage,omitempty"`
	// Title holds the value of the "title" field.
	Title string `json:"title,omitempty"`
	// Subtitle holds the value of the "subtitle" field.
	Subtitle string `json:"subtitle,omitempty"`
	// Description holds the value of the "description" field.
	Description string `json:"description,omitempty"`
	// Order holds the value of the "order" field.
	Order int `json:"order,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the TechniqueQuery when eager-loading is set.
	Edges        TechniqueEdges `json:"edges"`
	selectValues sql.SelectValues
}

// TechniqueEdges holds the relations/edges for other nodes in the graph.
type TechniqueEdges struct {
	// Unit holds the value of the unit edge.
	Unit *Unit `json:"unit,omitempty"`
	// Lessons holds the value of the lessons edge.
	Lessons []*Lesson `json:"lessons,omitempty"`
	// Techniques holds the value of the techniques edge.
	Techniques []*Unit `json:"techniques,omitempty"`
	// LessonTechniques holds the value of the lessonTechniques edge.
	LessonTechniques []*LessonTechnique `json:"lessonTechniques,omitempty"`
	// UnitTechniques holds the value of the unitTechniques edge.
	UnitTechniques []*UnitTechnique `json:"unitTechniques,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [5]bool
	// totalCount holds the count of the edges above.
	totalCount [3]map[string]int

	namedLessons          map[string][]*Lesson
	namedTechniques       map[string][]*Unit
	namedLessonTechniques map[string][]*LessonTechnique
	namedUnitTechniques   map[string][]*UnitTechnique
}

// UnitOrErr returns the Unit value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e TechniqueEdges) UnitOrErr() (*Unit, error) {
	if e.Unit != nil {
		return e.Unit, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: unit.Label}
	}
	return nil, &NotLoadedError{edge: "unit"}
}

// LessonsOrErr returns the Lessons value or an error if the edge
// was not loaded in eager-loading.
func (e TechniqueEdges) LessonsOrErr() ([]*Lesson, error) {
	if e.loadedTypes[1] {
		return e.Lessons, nil
	}
	return nil, &NotLoadedError{edge: "lessons"}
}

// TechniquesOrErr returns the Techniques value or an error if the edge
// was not loaded in eager-loading.
func (e TechniqueEdges) TechniquesOrErr() ([]*Unit, error) {
	if e.loadedTypes[2] {
		return e.Techniques, nil
	}
	return nil, &NotLoadedError{edge: "techniques"}
}

// LessonTechniquesOrErr returns the LessonTechniques value or an error if the edge
// was not loaded in eager-loading.
func (e TechniqueEdges) LessonTechniquesOrErr() ([]*LessonTechnique, error) {
	if e.loadedTypes[3] {
		return e.LessonTechniques, nil
	}
	return nil, &NotLoadedError{edge: "lessonTechniques"}
}

// UnitTechniquesOrErr returns the UnitTechniques value or an error if the edge
// was not loaded in eager-loading.
func (e TechniqueEdges) UnitTechniquesOrErr() ([]*UnitTechnique, error) {
	if e.loadedTypes[4] {
		return e.UnitTechniques, nil
	}
	return nil, &NotLoadedError{edge: "unitTechniques"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*Technique) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case technique.FieldID:
			values[i] = new(gqlid.TechniqueID)
		case technique.FieldUnitID:
			values[i] = new(gqlid.UnitID)
		case technique.FieldOrder:
			values[i] = new(sql.NullInt64)
		case technique.FieldIconImage, technique.FieldCoverImage, technique.FieldTitle, technique.FieldSubtitle, technique.FieldDescription:
			values[i] = new(sql.NullString)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the Technique fields.
func (t *Technique) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case technique.FieldID:
			if value, ok := values[i].(*gqlid.TechniqueID); !ok {
				return fmt.Errorf("unexpected type %T for field id", values[i])
			} else if value != nil {
				t.ID = *value
			}
		case technique.FieldUnitID:
			if value, ok := values[i].(*gqlid.UnitID); !ok {
				return fmt.Errorf("unexpected type %T for field unit_id", values[i])
			} else if value != nil {
				t.UnitID = *value
			}
		case technique.FieldIconImage:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field iconImage", values[i])
			} else if value.Valid {
				t.IconImage = value.String
			}
		case technique.FieldCoverImage:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field coverImage", values[i])
			} else if value.Valid {
				t.CoverImage = value.String
			}
		case technique.FieldTitle:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field title", values[i])
			} else if value.Valid {
				t.Title = value.String
			}
		case technique.FieldSubtitle:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field subtitle", values[i])
			} else if value.Valid {
				t.Subtitle = value.String
			}
		case technique.FieldDescription:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field description", values[i])
			} else if value.Valid {
				t.Description = value.String
			}
		case technique.FieldOrder:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field order", values[i])
			} else if value.Valid {
				t.Order = int(value.Int64)
			}
		default:
			t.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the Technique.
// This includes values selected through modifiers, order, etc.
func (t *Technique) Value(name string) (ent.Value, error) {
	return t.selectValues.Get(name)
}

// QueryUnit queries the "unit" edge of the Technique entity.
func (t *Technique) QueryUnit() *UnitQuery {
	return NewTechniqueClient(t.config).QueryUnit(t)
}

// QueryLessons queries the "lessons" edge of the Technique entity.
func (t *Technique) QueryLessons() *LessonQuery {
	return NewTechniqueClient(t.config).QueryLessons(t)
}

// QueryTechniques queries the "techniques" edge of the Technique entity.
func (t *Technique) QueryTechniques() *UnitQuery {
	return NewTechniqueClient(t.config).QueryTechniques(t)
}

// QueryLessonTechniques queries the "lessonTechniques" edge of the Technique entity.
func (t *Technique) QueryLessonTechniques() *LessonTechniqueQuery {
	return NewTechniqueClient(t.config).QueryLessonTechniques(t)
}

// QueryUnitTechniques queries the "unitTechniques" edge of the Technique entity.
func (t *Technique) QueryUnitTechniques() *UnitTechniqueQuery {
	return NewTechniqueClient(t.config).QueryUnitTechniques(t)
}

// Update returns a builder for updating this Technique.
// Note that you need to call Technique.Unwrap() before calling this method if this Technique
// was returned from a transaction, and the transaction was committed or rolled back.
func (t *Technique) Update() *TechniqueUpdateOne {
	return NewTechniqueClient(t.config).UpdateOne(t)
}

// Unwrap unwraps the Technique entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (t *Technique) Unwrap() *Technique {
	_tx, ok := t.config.driver.(*txDriver)
	if !ok {
		panic("ent: Technique is not a transactional entity")
	}
	t.config.driver = _tx.drv
	return t
}

// String implements the fmt.Stringer.
func (t *Technique) String() string {
	var builder strings.Builder
	builder.WriteString("Technique(")
	builder.WriteString(fmt.Sprintf("id=%v, ", t.ID))
	builder.WriteString("unit_id=")
	builder.WriteString(fmt.Sprintf("%v", t.UnitID))
	builder.WriteString(", ")
	builder.WriteString("iconImage=")
	builder.WriteString(t.IconImage)
	builder.WriteString(", ")
	builder.WriteString("coverImage=")
	builder.WriteString(t.CoverImage)
	builder.WriteString(", ")
	builder.WriteString("title=")
	builder.WriteString(t.Title)
	builder.WriteString(", ")
	builder.WriteString("subtitle=")
	builder.WriteString(t.Subtitle)
	builder.WriteString(", ")
	builder.WriteString("description=")
	builder.WriteString(t.Description)
	builder.WriteString(", ")
	builder.WriteString("order=")
	builder.WriteString(fmt.Sprintf("%v", t.Order))
	builder.WriteByte(')')
	return builder.String()
}

// NamedLessons returns the Lessons named value or an error if the edge was not
// loaded in eager-loading with this name.
func (t *Technique) NamedLessons(name string) ([]*Lesson, error) {
	if t.Edges.namedLessons == nil {
		return nil, &NotLoadedError{edge: name}
	}
	nodes, ok := t.Edges.namedLessons[name]
	if !ok {
		return nil, &NotLoadedError{edge: name}
	}
	return nodes, nil
}

func (t *Technique) appendNamedLessons(name string, edges ...*Lesson) {
	if t.Edges.namedLessons == nil {
		t.Edges.namedLessons = make(map[string][]*Lesson)
	}
	if len(edges) == 0 {
		t.Edges.namedLessons[name] = []*Lesson{}
	} else {
		t.Edges.namedLessons[name] = append(t.Edges.namedLessons[name], edges...)
	}
}

// NamedTechniques returns the Techniques named value or an error if the edge was not
// loaded in eager-loading with this name.
func (t *Technique) NamedTechniques(name string) ([]*Unit, error) {
	if t.Edges.namedTechniques == nil {
		return nil, &NotLoadedError{edge: name}
	}
	nodes, ok := t.Edges.namedTechniques[name]
	if !ok {
		return nil, &NotLoadedError{edge: name}
	}
	return nodes, nil
}

func (t *Technique) appendNamedTechniques(name string, edges ...*Unit) {
	if t.Edges.namedTechniques == nil {
		t.Edges.namedTechniques = make(map[string][]*Unit)
	}
	if len(edges) == 0 {
		t.Edges.namedTechniques[name] = []*Unit{}
	} else {
		t.Edges.namedTechniques[name] = append(t.Edges.namedTechniques[name], edges...)
	}
}

// NamedLessonTechniques returns the LessonTechniques named value or an error if the edge was not
// loaded in eager-loading with this name.
func (t *Technique) NamedLessonTechniques(name string) ([]*LessonTechnique, error) {
	if t.Edges.namedLessonTechniques == nil {
		return nil, &NotLoadedError{edge: name}
	}
	nodes, ok := t.Edges.namedLessonTechniques[name]
	if !ok {
		return nil, &NotLoadedError{edge: name}
	}
	return nodes, nil
}

func (t *Technique) appendNamedLessonTechniques(name string, edges ...*LessonTechnique) {
	if t.Edges.namedLessonTechniques == nil {
		t.Edges.namedLessonTechniques = make(map[string][]*LessonTechnique)
	}
	if len(edges) == 0 {
		t.Edges.namedLessonTechniques[name] = []*LessonTechnique{}
	} else {
		t.Edges.namedLessonTechniques[name] = append(t.Edges.namedLessonTechniques[name], edges...)
	}
}

// NamedUnitTechniques returns the UnitTechniques named value or an error if the edge was not
// loaded in eager-loading with this name.
func (t *Technique) NamedUnitTechniques(name string) ([]*UnitTechnique, error) {
	if t.Edges.namedUnitTechniques == nil {
		return nil, &NotLoadedError{edge: name}
	}
	nodes, ok := t.Edges.namedUnitTechniques[name]
	if !ok {
		return nil, &NotLoadedError{edge: name}
	}
	return nodes, nil
}

func (t *Technique) appendNamedUnitTechniques(name string, edges ...*UnitTechnique) {
	if t.Edges.namedUnitTechniques == nil {
		t.Edges.namedUnitTechniques = make(map[string][]*UnitTechnique)
	}
	if len(edges) == 0 {
		t.Edges.namedUnitTechniques[name] = []*UnitTechnique{}
	} else {
		t.Edges.namedUnitTechniques[name] = append(t.Edges.namedUnitTechniques[name], edges...)
	}
}

// Techniques is a parsable slice of Technique.
type Techniques []*Technique