// Code generated by ent, DO NOT EDIT.

package lessontechnique

import (
	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// LessonID applies equality check predicate on the "lesson_id" field. It's identical to LessonIDEQ.
func LessonID(v gqlid.LessonID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldLessonID, v))
}

// TechniqueID applies equality check predicate on the "technique_id" field. It's identical to TechniqueIDEQ.
func TechniqueID(v gqlid.TechniqueID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldTechniqueID, v))
}

// Order applies equality check predicate on the "order" field. It's identical to OrderEQ.
func Order(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldOrder, v))
}

// LessonIDEQ applies the EQ predicate on the "lesson_id" field.
func LessonIDEQ(v gqlid.LessonID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldLessonID, v))
}

// LessonIDNEQ applies the NEQ predicate on the "lesson_id" field.
func LessonIDNEQ(v gqlid.LessonID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNEQ(FieldLessonID, v))
}

// LessonIDIn applies the In predicate on the "lesson_id" field.
func LessonIDIn(vs ...gqlid.LessonID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldIn(FieldLessonID, vs...))
}

// LessonIDNotIn applies the NotIn predicate on the "lesson_id" field.
func LessonIDNotIn(vs ...gqlid.LessonID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNotIn(FieldLessonID, vs...))
}

// TechniqueIDEQ applies the EQ predicate on the "technique_id" field.
func TechniqueIDEQ(v gqlid.TechniqueID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldTechniqueID, v))
}

// TechniqueIDNEQ applies the NEQ predicate on the "technique_id" field.
func TechniqueIDNEQ(v gqlid.TechniqueID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNEQ(FieldTechniqueID, v))
}

// TechniqueIDIn applies the In predicate on the "technique_id" field.
func TechniqueIDIn(vs ...gqlid.TechniqueID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldIn(FieldTechniqueID, vs...))
}

// TechniqueIDNotIn applies the NotIn predicate on the "technique_id" field.
func TechniqueIDNotIn(vs ...gqlid.TechniqueID) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNotIn(FieldTechniqueID, vs...))
}

// OrderEQ applies the EQ predicate on the "order" field.
func OrderEQ(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldEQ(FieldOrder, v))
}

// OrderNEQ applies the NEQ predicate on the "order" field.
func OrderNEQ(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNEQ(FieldOrder, v))
}

// OrderIn applies the In predicate on the "order" field.
func OrderIn(vs ...int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldIn(FieldOrder, vs...))
}

// OrderNotIn applies the NotIn predicate on the "order" field.
func OrderNotIn(vs ...int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldNotIn(FieldOrder, vs...))
}

// OrderGT applies the GT predicate on the "order" field.
func OrderGT(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldGT(FieldOrder, v))
}

// OrderGTE applies the GTE predicate on the "order" field.
func OrderGTE(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldGTE(FieldOrder, v))
}

// OrderLT applies the LT predicate on the "order" field.
func OrderLT(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldLT(FieldOrder, v))
}

// OrderLTE applies the LTE predicate on the "order" field.
func OrderLTE(v int64) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.FieldLTE(FieldOrder, v))
}

// HasLesson applies the HasEdge predicate on the "lesson" edge.
func HasLesson() predicate.LessonTechnique {
	return predicate.LessonTechnique(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, LessonColumn),
			sqlgraph.Edge(sqlgraph.M2O, false, LessonTable, LessonColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasLessonWith applies the HasEdge predicate on the "lesson" edge with a given conditions (other predicates).
func HasLessonWith(preds ...predicate.Lesson) predicate.LessonTechnique {
	return predicate.LessonTechnique(func(s *sql.Selector) {
		step := newLessonStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasTechnique applies the HasEdge predicate on the "technique" edge.
func HasTechnique() predicate.LessonTechnique {
	return predicate.LessonTechnique(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, TechniqueColumn),
			sqlgraph.Edge(sqlgraph.M2O, false, TechniqueTable, TechniqueColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasTechniqueWith applies the HasEdge predicate on the "technique" edge with a given conditions (other predicates).
func HasTechniqueWith(preds ...predicate.Technique) predicate.LessonTechnique {
	return predicate.LessonTechnique(func(s *sql.Selector) {
		step := newTechniqueStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// And groups predicates with the AND operator between them.
func And(predicates ...predicate.LessonTechnique) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.AndPredicates(predicates...))
}

// Or groups predicates with the OR operator between them.
func Or(predicates ...predicate.LessonTechnique) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.OrPredicates(predicates...))
}

// Not applies the not operator on the given predicate.
func Not(p predicate.LessonTechnique) predicate.LessonTechnique {
	return predicate.LessonTechnique(sql.NotPredicates(p))
}
