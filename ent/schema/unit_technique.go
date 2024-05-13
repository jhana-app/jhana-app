package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// UnitTechnique holds the edge schema definition of the Unit -> Technique relationship.
type UnitTechnique struct {
	ent.Schema
}

// Fields of the UnitTechnique.
func (UnitTechnique) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("unit_id").
			GoType(gqlid.UnitID{}).
			Immutable(),
		field.Int64("technique_id").
			GoType(gqlid.TechniqueID{}).
			Immutable(),
		field.Int64("position").
			Immutable(),
	}
}

// Edges of the UnitTechnique.
func (UnitTechnique) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("unit", Unit.Type).
			Field("unit_id").
			Unique().
			Required().
			Immutable(),
		edge.To("technique", Technique.Type).
			Field("technique_id").
			Unique().
			Required().
			Immutable(),
	}
}

func (UnitTechnique) Annotations() []schema.Annotation {
	return []schema.Annotation{
		field.ID("unit_id", "technique_id"),
	}
}
