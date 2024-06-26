// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"

	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/lessontechnique"
	"github.com/jhana-app/jhana-app/ent/technique"
)

// LessonTechniqueCreate is the builder for creating a LessonTechnique entity.
type LessonTechniqueCreate struct {
	config
	mutation *LessonTechniqueMutation
	hooks    []Hook
}

// SetLessonID sets the "lesson_id" field.
func (ltc *LessonTechniqueCreate) SetLessonID(gi gqlid.LessonID) *LessonTechniqueCreate {
	ltc.mutation.SetLessonID(gi)
	return ltc
}

// SetTechniqueID sets the "technique_id" field.
func (ltc *LessonTechniqueCreate) SetTechniqueID(gi gqlid.TechniqueID) *LessonTechniqueCreate {
	ltc.mutation.SetTechniqueID(gi)
	return ltc
}

// SetOrder sets the "order" field.
func (ltc *LessonTechniqueCreate) SetOrder(i int64) *LessonTechniqueCreate {
	ltc.mutation.SetOrder(i)
	return ltc
}

// SetLesson sets the "lesson" edge to the Lesson entity.
func (ltc *LessonTechniqueCreate) SetLesson(l *Lesson) *LessonTechniqueCreate {
	return ltc.SetLessonID(l.ID)
}

// SetTechnique sets the "technique" edge to the Technique entity.
func (ltc *LessonTechniqueCreate) SetTechnique(t *Technique) *LessonTechniqueCreate {
	return ltc.SetTechniqueID(t.ID)
}

// Mutation returns the LessonTechniqueMutation object of the builder.
func (ltc *LessonTechniqueCreate) Mutation() *LessonTechniqueMutation {
	return ltc.mutation
}

// Save creates the LessonTechnique in the database.
func (ltc *LessonTechniqueCreate) Save(ctx context.Context) (*LessonTechnique, error) {
	return withHooks(ctx, ltc.sqlSave, ltc.mutation, ltc.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (ltc *LessonTechniqueCreate) SaveX(ctx context.Context) *LessonTechnique {
	v, err := ltc.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (ltc *LessonTechniqueCreate) Exec(ctx context.Context) error {
	_, err := ltc.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ltc *LessonTechniqueCreate) ExecX(ctx context.Context) {
	if err := ltc.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (ltc *LessonTechniqueCreate) check() error {
	if _, ok := ltc.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson_id", err: errors.New(`ent: missing required field "LessonTechnique.lesson_id"`)}
	}
	if _, ok := ltc.mutation.TechniqueID(); !ok {
		return &ValidationError{Name: "technique_id", err: errors.New(`ent: missing required field "LessonTechnique.technique_id"`)}
	}
	if _, ok := ltc.mutation.Order(); !ok {
		return &ValidationError{Name: "order", err: errors.New(`ent: missing required field "LessonTechnique.order"`)}
	}
	if _, ok := ltc.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson", err: errors.New(`ent: missing required edge "LessonTechnique.lesson"`)}
	}
	if _, ok := ltc.mutation.TechniqueID(); !ok {
		return &ValidationError{Name: "technique", err: errors.New(`ent: missing required edge "LessonTechnique.technique"`)}
	}
	return nil
}

func (ltc *LessonTechniqueCreate) sqlSave(ctx context.Context) (*LessonTechnique, error) {
	if err := ltc.check(); err != nil {
		return nil, err
	}
	_node, _spec := ltc.createSpec()
	if err := sqlgraph.CreateNode(ctx, ltc.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	return _node, nil
}

func (ltc *LessonTechniqueCreate) createSpec() (*LessonTechnique, *sqlgraph.CreateSpec) {
	var (
		_node = &LessonTechnique{config: ltc.config}
		_spec = sqlgraph.NewCreateSpec(lessontechnique.Table, nil)
	)
	if value, ok := ltc.mutation.Order(); ok {
		_spec.SetField(lessontechnique.FieldOrder, field.TypeInt64, value)
		_node.Order = value
	}
	if nodes := ltc.mutation.LessonIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   lessontechnique.LessonTable,
			Columns: []string{lessontechnique.LessonColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(lesson.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.LessonID = nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := ltc.mutation.TechniqueIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   lessontechnique.TechniqueTable,
			Columns: []string{lessontechnique.TechniqueColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(technique.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.TechniqueID = nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	return _node, _spec
}

// LessonTechniqueCreateBulk is the builder for creating many LessonTechnique entities in bulk.
type LessonTechniqueCreateBulk struct {
	config
	err      error
	builders []*LessonTechniqueCreate
}

// Save creates the LessonTechnique entities in the database.
func (ltcb *LessonTechniqueCreateBulk) Save(ctx context.Context) ([]*LessonTechnique, error) {
	if ltcb.err != nil {
		return nil, ltcb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(ltcb.builders))
	nodes := make([]*LessonTechnique, len(ltcb.builders))
	mutators := make([]Mutator, len(ltcb.builders))
	for i := range ltcb.builders {
		func(i int, root context.Context) {
			builder := ltcb.builders[i]
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*LessonTechniqueMutation)
				if !ok {
					return nil, fmt.Errorf("unexpected mutation type %T", m)
				}
				if err := builder.check(); err != nil {
					return nil, err
				}
				builder.mutation = mutation
				var err error
				nodes[i], specs[i] = builder.createSpec()
				if i < len(mutators)-1 {
					_, err = mutators[i+1].Mutate(root, ltcb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, ltcb.driver, spec); err != nil {
						if sqlgraph.IsConstraintError(err) {
							err = &ConstraintError{msg: err.Error(), wrap: err}
						}
					}
				}
				if err != nil {
					return nil, err
				}
				mutation.done = true
				return nodes[i], nil
			})
			for i := len(builder.hooks) - 1; i >= 0; i-- {
				mut = builder.hooks[i](mut)
			}
			mutators[i] = mut
		}(i, ctx)
	}
	if len(mutators) > 0 {
		if _, err := mutators[0].Mutate(ctx, ltcb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (ltcb *LessonTechniqueCreateBulk) SaveX(ctx context.Context) []*LessonTechnique {
	v, err := ltcb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (ltcb *LessonTechniqueCreateBulk) Exec(ctx context.Context) error {
	_, err := ltcb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ltcb *LessonTechniqueCreateBulk) ExecX(ctx context.Context) {
	if err := ltcb.Exec(ctx); err != nil {
		panic(err)
	}
}
