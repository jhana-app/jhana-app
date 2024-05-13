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
	"github.com/jhana-app/jhana-app/ent/unittechnique"
)

// UnitTechnique is the model entity for the UnitTechnique schema.
type UnitTechnique struct {
	config `json:"-"`
	// UnitID holds the value of the "unit_id" field.
	UnitID gqlid.UnitID `json:"unit_id,omitempty"`
	// TechniqueID holds the value of the "technique_id" field.
	TechniqueID gqlid.TechniqueID `json:"technique_id,omitempty"`
	// Position holds the value of the "position" field.
	Position int64 `json:"position,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the UnitTechniqueQuery when eager-loading is set.
	Edges        UnitTechniqueEdges `json:"edges"`
	selectValues sql.SelectValues
}

// UnitTechniqueEdges holds the relations/edges for other nodes in the graph.
type UnitTechniqueEdges struct {
	// Unit holds the value of the unit edge.
	Unit *Unit `json:"unit,omitempty"`
	// Technique holds the value of the technique edge.
	Technique *Technique `json:"technique,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [2]bool
	// totalCount holds the count of the edges above.
	totalCount [2]map[string]int
}

// UnitOrErr returns the Unit value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UnitTechniqueEdges) UnitOrErr() (*Unit, error) {
	if e.Unit != nil {
		return e.Unit, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: unit.Label}
	}
	return nil, &NotLoadedError{edge: "unit"}
}

// TechniqueOrErr returns the Technique value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e UnitTechniqueEdges) TechniqueOrErr() (*Technique, error) {
	if e.Technique != nil {
		return e.Technique, nil
	} else if e.loadedTypes[1] {
		return nil, &NotFoundError{label: technique.Label}
	}
	return nil, &NotLoadedError{edge: "technique"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*UnitTechnique) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case unittechnique.FieldTechniqueID:
			values[i] = new(gqlid.TechniqueID)
		case unittechnique.FieldUnitID:
			values[i] = new(gqlid.UnitID)
		case unittechnique.FieldPosition:
			values[i] = new(sql.NullInt64)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the UnitTechnique fields.
func (ut *UnitTechnique) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case unittechnique.FieldUnitID:
			if value, ok := values[i].(*gqlid.UnitID); !ok {
				return fmt.Errorf("unexpected type %T for field unit_id", values[i])
			} else if value != nil {
				ut.UnitID = *value
			}
		case unittechnique.FieldTechniqueID:
			if value, ok := values[i].(*gqlid.TechniqueID); !ok {
				return fmt.Errorf("unexpected type %T for field technique_id", values[i])
			} else if value != nil {
				ut.TechniqueID = *value
			}
		case unittechnique.FieldPosition:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for field position", values[i])
			} else if value.Valid {
				ut.Position = value.Int64
			}
		default:
			ut.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the UnitTechnique.
// This includes values selected through modifiers, order, etc.
func (ut *UnitTechnique) Value(name string) (ent.Value, error) {
	return ut.selectValues.Get(name)
}

// QueryUnit queries the "unit" edge of the UnitTechnique entity.
func (ut *UnitTechnique) QueryUnit() *UnitQuery {
	return NewUnitTechniqueClient(ut.config).QueryUnit(ut)
}

// QueryTechnique queries the "technique" edge of the UnitTechnique entity.
func (ut *UnitTechnique) QueryTechnique() *TechniqueQuery {
	return NewUnitTechniqueClient(ut.config).QueryTechnique(ut)
}

// Update returns a builder for updating this UnitTechnique.
// Note that you need to call UnitTechnique.Unwrap() before calling this method if this UnitTechnique
// was returned from a transaction, and the transaction was committed or rolled back.
func (ut *UnitTechnique) Update() *UnitTechniqueUpdateOne {
	return NewUnitTechniqueClient(ut.config).UpdateOne(ut)
}

// Unwrap unwraps the UnitTechnique entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (ut *UnitTechnique) Unwrap() *UnitTechnique {
	_tx, ok := ut.config.driver.(*txDriver)
	if !ok {
		panic("ent: UnitTechnique is not a transactional entity")
	}
	ut.config.driver = _tx.drv
	return ut
}

// String implements the fmt.Stringer.
func (ut *UnitTechnique) String() string {
	var builder strings.Builder
	builder.WriteString("UnitTechnique(")
	builder.WriteString("unit_id=")
	builder.WriteString(fmt.Sprintf("%v", ut.UnitID))
	builder.WriteString(", ")
	builder.WriteString("technique_id=")
	builder.WriteString(fmt.Sprintf("%v", ut.TechniqueID))
	builder.WriteString(", ")
	builder.WriteString("position=")
	builder.WriteString(fmt.Sprintf("%v", ut.Position))
	builder.WriteByte(')')
	return builder.String()
}

// UnitTechniques is a parsable slice of UnitTechnique.
type UnitTechniques []*UnitTechnique