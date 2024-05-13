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
	"github.com/jhana-app/jhana-app/ent/technique"
	"github.com/jhana-app/jhana-app/ent/unit"
)

// TechniqueCreate is the builder for creating a Technique entity.
type TechniqueCreate struct {
	config
	mutation *TechniqueMutation
	hooks    []Hook
}

// SetUnitID sets the "unit_id" field.
func (tc *TechniqueCreate) SetUnitID(gi gqlid.UnitID) *TechniqueCreate {
	tc.mutation.SetUnitID(gi)
	return tc
}

// SetIconImage sets the "iconImage" field.
func (tc *TechniqueCreate) SetIconImage(s string) *TechniqueCreate {
	tc.mutation.SetIconImage(s)
	return tc
}

// SetCoverImage sets the "coverImage" field.
func (tc *TechniqueCreate) SetCoverImage(s string) *TechniqueCreate {
	tc.mutation.SetCoverImage(s)
	return tc
}

// SetTitle sets the "title" field.
func (tc *TechniqueCreate) SetTitle(s string) *TechniqueCreate {
	tc.mutation.SetTitle(s)
	return tc
}

// SetSubtitle sets the "subtitle" field.
func (tc *TechniqueCreate) SetSubtitle(s string) *TechniqueCreate {
	tc.mutation.SetSubtitle(s)
	return tc
}

// SetDescription sets the "description" field.
func (tc *TechniqueCreate) SetDescription(s string) *TechniqueCreate {
	tc.mutation.SetDescription(s)
	return tc
}

// SetOrder sets the "order" field.
func (tc *TechniqueCreate) SetOrder(i int) *TechniqueCreate {
	tc.mutation.SetOrder(i)
	return tc
}

// SetID sets the "id" field.
func (tc *TechniqueCreate) SetID(gi gqlid.TechniqueID) *TechniqueCreate {
	tc.mutation.SetID(gi)
	return tc
}

// SetUnit sets the "unit" edge to the Unit entity.
func (tc *TechniqueCreate) SetUnit(u *Unit) *TechniqueCreate {
	return tc.SetUnitID(u.ID)
}

// AddLessonIDs adds the "lessons" edge to the Lesson entity by IDs.
func (tc *TechniqueCreate) AddLessonIDs(ids ...gqlid.LessonID) *TechniqueCreate {
	tc.mutation.AddLessonIDs(ids...)
	return tc
}

// AddLessons adds the "lessons" edges to the Lesson entity.
func (tc *TechniqueCreate) AddLessons(l ...*Lesson) *TechniqueCreate {
	ids := make([]gqlid.LessonID, len(l))
	for i := range l {
		ids[i] = l[i].ID
	}
	return tc.AddLessonIDs(ids...)
}

// AddTechniqueIDs adds the "techniques" edge to the Unit entity by IDs.
func (tc *TechniqueCreate) AddTechniqueIDs(ids ...gqlid.UnitID) *TechniqueCreate {
	tc.mutation.AddTechniqueIDs(ids...)
	return tc
}

// AddTechniques adds the "techniques" edges to the Unit entity.
func (tc *TechniqueCreate) AddTechniques(u ...*Unit) *TechniqueCreate {
	ids := make([]gqlid.UnitID, len(u))
	for i := range u {
		ids[i] = u[i].ID
	}
	return tc.AddTechniqueIDs(ids...)
}

// Mutation returns the TechniqueMutation object of the builder.
func (tc *TechniqueCreate) Mutation() *TechniqueMutation {
	return tc.mutation
}

// Save creates the Technique in the database.
func (tc *TechniqueCreate) Save(ctx context.Context) (*Technique, error) {
	return withHooks(ctx, tc.sqlSave, tc.mutation, tc.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (tc *TechniqueCreate) SaveX(ctx context.Context) *Technique {
	v, err := tc.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (tc *TechniqueCreate) Exec(ctx context.Context) error {
	_, err := tc.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (tc *TechniqueCreate) ExecX(ctx context.Context) {
	if err := tc.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (tc *TechniqueCreate) check() error {
	if _, ok := tc.mutation.UnitID(); !ok {
		return &ValidationError{Name: "unit_id", err: errors.New(`ent: missing required field "Technique.unit_id"`)}
	}
	if _, ok := tc.mutation.IconImage(); !ok {
		return &ValidationError{Name: "iconImage", err: errors.New(`ent: missing required field "Technique.iconImage"`)}
	}
	if v, ok := tc.mutation.IconImage(); ok {
		if err := technique.IconImageValidator(v); err != nil {
			return &ValidationError{Name: "iconImage", err: fmt.Errorf(`ent: validator failed for field "Technique.iconImage": %w`, err)}
		}
	}
	if _, ok := tc.mutation.CoverImage(); !ok {
		return &ValidationError{Name: "coverImage", err: errors.New(`ent: missing required field "Technique.coverImage"`)}
	}
	if v, ok := tc.mutation.CoverImage(); ok {
		if err := technique.CoverImageValidator(v); err != nil {
			return &ValidationError{Name: "coverImage", err: fmt.Errorf(`ent: validator failed for field "Technique.coverImage": %w`, err)}
		}
	}
	if _, ok := tc.mutation.Title(); !ok {
		return &ValidationError{Name: "title", err: errors.New(`ent: missing required field "Technique.title"`)}
	}
	if v, ok := tc.mutation.Title(); ok {
		if err := technique.TitleValidator(v); err != nil {
			return &ValidationError{Name: "title", err: fmt.Errorf(`ent: validator failed for field "Technique.title": %w`, err)}
		}
	}
	if _, ok := tc.mutation.Subtitle(); !ok {
		return &ValidationError{Name: "subtitle", err: errors.New(`ent: missing required field "Technique.subtitle"`)}
	}
	if v, ok := tc.mutation.Subtitle(); ok {
		if err := technique.SubtitleValidator(v); err != nil {
			return &ValidationError{Name: "subtitle", err: fmt.Errorf(`ent: validator failed for field "Technique.subtitle": %w`, err)}
		}
	}
	if _, ok := tc.mutation.Description(); !ok {
		return &ValidationError{Name: "description", err: errors.New(`ent: missing required field "Technique.description"`)}
	}
	if v, ok := tc.mutation.Description(); ok {
		if err := technique.DescriptionValidator(v); err != nil {
			return &ValidationError{Name: "description", err: fmt.Errorf(`ent: validator failed for field "Technique.description": %w`, err)}
		}
	}
	if _, ok := tc.mutation.Order(); !ok {
		return &ValidationError{Name: "order", err: errors.New(`ent: missing required field "Technique.order"`)}
	}
	if v, ok := tc.mutation.Order(); ok {
		if err := technique.OrderValidator(v); err != nil {
			return &ValidationError{Name: "order", err: fmt.Errorf(`ent: validator failed for field "Technique.order": %w`, err)}
		}
	}
	if _, ok := tc.mutation.UnitID(); !ok {
		return &ValidationError{Name: "unit", err: errors.New(`ent: missing required edge "Technique.unit"`)}
	}
	return nil
}

func (tc *TechniqueCreate) sqlSave(ctx context.Context) (*Technique, error) {
	if err := tc.check(); err != nil {
		return nil, err
	}
	_node, _spec := tc.createSpec()
	if err := sqlgraph.CreateNode(ctx, tc.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	if _spec.ID.Value != nil {
		if id, ok := _spec.ID.Value.(*gqlid.TechniqueID); ok {
			_node.ID = *id
		} else if err := _node.ID.Scan(_spec.ID.Value); err != nil {
			return nil, err
		}
	}
	tc.mutation.id = &_node.ID
	tc.mutation.done = true
	return _node, nil
}

func (tc *TechniqueCreate) createSpec() (*Technique, *sqlgraph.CreateSpec) {
	var (
		_node = &Technique{config: tc.config}
		_spec = sqlgraph.NewCreateSpec(technique.Table, sqlgraph.NewFieldSpec(technique.FieldID, field.TypeInt64))
	)
	if id, ok := tc.mutation.ID(); ok {
		_node.ID = id
		_spec.ID.Value = &id
	}
	if value, ok := tc.mutation.IconImage(); ok {
		_spec.SetField(technique.FieldIconImage, field.TypeString, value)
		_node.IconImage = value
	}
	if value, ok := tc.mutation.CoverImage(); ok {
		_spec.SetField(technique.FieldCoverImage, field.TypeString, value)
		_node.CoverImage = value
	}
	if value, ok := tc.mutation.Title(); ok {
		_spec.SetField(technique.FieldTitle, field.TypeString, value)
		_node.Title = value
	}
	if value, ok := tc.mutation.Subtitle(); ok {
		_spec.SetField(technique.FieldSubtitle, field.TypeString, value)
		_node.Subtitle = value
	}
	if value, ok := tc.mutation.Description(); ok {
		_spec.SetField(technique.FieldDescription, field.TypeString, value)
		_node.Description = value
	}
	if value, ok := tc.mutation.Order(); ok {
		_spec.SetField(technique.FieldOrder, field.TypeInt, value)
		_node.Order = value
	}
	if nodes := tc.mutation.UnitIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   technique.UnitTable,
			Columns: []string{technique.UnitColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(unit.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.UnitID = nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := tc.mutation.LessonsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2M,
			Inverse: true,
			Table:   technique.LessonsTable,
			Columns: technique.LessonsPrimaryKey,
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(lesson.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := tc.mutation.TechniquesIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2M,
			Inverse: true,
			Table:   technique.TechniquesTable,
			Columns: technique.TechniquesPrimaryKey,
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(unit.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges = append(_spec.Edges, edge)
	}
	return _node, _spec
}

// TechniqueCreateBulk is the builder for creating many Technique entities in bulk.
type TechniqueCreateBulk struct {
	config
	err      error
	builders []*TechniqueCreate
}

// Save creates the Technique entities in the database.
func (tcb *TechniqueCreateBulk) Save(ctx context.Context) ([]*Technique, error) {
	if tcb.err != nil {
		return nil, tcb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(tcb.builders))
	nodes := make([]*Technique, len(tcb.builders))
	mutators := make([]Mutator, len(tcb.builders))
	for i := range tcb.builders {
		func(i int, root context.Context) {
			builder := tcb.builders[i]
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*TechniqueMutation)
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
					_, err = mutators[i+1].Mutate(root, tcb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, tcb.driver, spec); err != nil {
						if sqlgraph.IsConstraintError(err) {
							err = &ConstraintError{msg: err.Error(), wrap: err}
						}
					}
				}
				if err != nil {
					return nil, err
				}
				mutation.id = &nodes[i].ID
				if specs[i].ID.Value != nil {
					if err := nodes[i].ID.Scan(specs[i].ID.Value); err != nil {
						return nil, err
					}
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
		if _, err := mutators[0].Mutate(ctx, tcb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (tcb *TechniqueCreateBulk) SaveX(ctx context.Context) []*Technique {
	v, err := tcb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (tcb *TechniqueCreateBulk) Exec(ctx context.Context) error {
	_, err := tcb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (tcb *TechniqueCreateBulk) ExecX(ctx context.Context) {
	if err := tcb.Exec(ctx); err != nil {
		panic(err)
	}
}
