// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"

	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/course"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/unit"
)

// CourseCreate is the builder for creating a Course entity.
type CourseCreate struct {
	config
	mutation *CourseMutation
	hooks    []Hook
}

// SetIconImage sets the "iconImage" field.
func (cc *CourseCreate) SetIconImage(s string) *CourseCreate {
	cc.mutation.SetIconImage(s)
	return cc
}

// SetCoverImage sets the "coverImage" field.
func (cc *CourseCreate) SetCoverImage(s string) *CourseCreate {
	cc.mutation.SetCoverImage(s)
	return cc
}

// SetTitle sets the "title" field.
func (cc *CourseCreate) SetTitle(s string) *CourseCreate {
	cc.mutation.SetTitle(s)
	return cc
}

// SetDescription sets the "description" field.
func (cc *CourseCreate) SetDescription(s string) *CourseCreate {
	cc.mutation.SetDescription(s)
	return cc
}

// SetColor sets the "color" field.
func (cc *CourseCreate) SetColor(s string) *CourseCreate {
	cc.mutation.SetColor(s)
	return cc
}

// SetActive sets the "active" field.
func (cc *CourseCreate) SetActive(b bool) *CourseCreate {
	cc.mutation.SetActive(b)
	return cc
}

// SetOrder sets the "order" field.
func (cc *CourseCreate) SetOrder(i int) *CourseCreate {
	cc.mutation.SetOrder(i)
	return cc
}

// SetID sets the "id" field.
func (cc *CourseCreate) SetID(gi gqlid.CourseID) *CourseCreate {
	cc.mutation.SetID(gi)
	return cc
}

// AddUnitIDs adds the "units" edge to the Unit entity by IDs.
func (cc *CourseCreate) AddUnitIDs(ids ...gqlid.UnitID) *CourseCreate {
	cc.mutation.AddUnitIDs(ids...)
	return cc
}

// AddUnits adds the "units" edges to the Unit entity.
func (cc *CourseCreate) AddUnits(u ...*Unit) *CourseCreate {
	ids := make([]gqlid.UnitID, len(u))
	for i := range u {
		ids[i] = u[i].ID
	}
	return cc.AddUnitIDs(ids...)
}

// Mutation returns the CourseMutation object of the builder.
func (cc *CourseCreate) Mutation() *CourseMutation {
	return cc.mutation
}

// Save creates the Course in the database.
func (cc *CourseCreate) Save(ctx context.Context) (*Course, error) {
	return withHooks(ctx, cc.sqlSave, cc.mutation, cc.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (cc *CourseCreate) SaveX(ctx context.Context) *Course {
	v, err := cc.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (cc *CourseCreate) Exec(ctx context.Context) error {
	_, err := cc.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (cc *CourseCreate) ExecX(ctx context.Context) {
	if err := cc.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (cc *CourseCreate) check() error {
	if _, ok := cc.mutation.IconImage(); !ok {
		return &ValidationError{Name: "iconImage", err: errors.New(`ent: missing required field "Course.iconImage"`)}
	}
	if v, ok := cc.mutation.IconImage(); ok {
		if err := course.IconImageValidator(v); err != nil {
			return &ValidationError{Name: "iconImage", err: fmt.Errorf(`ent: validator failed for field "Course.iconImage": %w`, err)}
		}
	}
	if _, ok := cc.mutation.CoverImage(); !ok {
		return &ValidationError{Name: "coverImage", err: errors.New(`ent: missing required field "Course.coverImage"`)}
	}
	if v, ok := cc.mutation.CoverImage(); ok {
		if err := course.CoverImageValidator(v); err != nil {
			return &ValidationError{Name: "coverImage", err: fmt.Errorf(`ent: validator failed for field "Course.coverImage": %w`, err)}
		}
	}
	if _, ok := cc.mutation.Title(); !ok {
		return &ValidationError{Name: "title", err: errors.New(`ent: missing required field "Course.title"`)}
	}
	if v, ok := cc.mutation.Title(); ok {
		if err := course.TitleValidator(v); err != nil {
			return &ValidationError{Name: "title", err: fmt.Errorf(`ent: validator failed for field "Course.title": %w`, err)}
		}
	}
	if _, ok := cc.mutation.Description(); !ok {
		return &ValidationError{Name: "description", err: errors.New(`ent: missing required field "Course.description"`)}
	}
	if v, ok := cc.mutation.Description(); ok {
		if err := course.DescriptionValidator(v); err != nil {
			return &ValidationError{Name: "description", err: fmt.Errorf(`ent: validator failed for field "Course.description": %w`, err)}
		}
	}
	if _, ok := cc.mutation.Color(); !ok {
		return &ValidationError{Name: "color", err: errors.New(`ent: missing required field "Course.color"`)}
	}
	if v, ok := cc.mutation.Color(); ok {
		if err := course.ColorValidator(v); err != nil {
			return &ValidationError{Name: "color", err: fmt.Errorf(`ent: validator failed for field "Course.color": %w`, err)}
		}
	}
	if _, ok := cc.mutation.Active(); !ok {
		return &ValidationError{Name: "active", err: errors.New(`ent: missing required field "Course.active"`)}
	}
	if _, ok := cc.mutation.Order(); !ok {
		return &ValidationError{Name: "order", err: errors.New(`ent: missing required field "Course.order"`)}
	}
	if v, ok := cc.mutation.Order(); ok {
		if err := course.OrderValidator(v); err != nil {
			return &ValidationError{Name: "order", err: fmt.Errorf(`ent: validator failed for field "Course.order": %w`, err)}
		}
	}
	return nil
}

func (cc *CourseCreate) sqlSave(ctx context.Context) (*Course, error) {
	if err := cc.check(); err != nil {
		return nil, err
	}
	_node, _spec := cc.createSpec()
	if err := sqlgraph.CreateNode(ctx, cc.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	if _spec.ID.Value != nil {
		if id, ok := _spec.ID.Value.(*gqlid.CourseID); ok {
			_node.ID = *id
		} else if err := _node.ID.Scan(_spec.ID.Value); err != nil {
			return nil, err
		}
	}
	cc.mutation.id = &_node.ID
	cc.mutation.done = true
	return _node, nil
}

func (cc *CourseCreate) createSpec() (*Course, *sqlgraph.CreateSpec) {
	var (
		_node = &Course{config: cc.config}
		_spec = sqlgraph.NewCreateSpec(course.Table, sqlgraph.NewFieldSpec(course.FieldID, field.TypeInt64))
	)
	if id, ok := cc.mutation.ID(); ok {
		_node.ID = id
		_spec.ID.Value = &id
	}
	if value, ok := cc.mutation.IconImage(); ok {
		_spec.SetField(course.FieldIconImage, field.TypeString, value)
		_node.IconImage = value
	}
	if value, ok := cc.mutation.CoverImage(); ok {
		_spec.SetField(course.FieldCoverImage, field.TypeString, value)
		_node.CoverImage = value
	}
	if value, ok := cc.mutation.Title(); ok {
		_spec.SetField(course.FieldTitle, field.TypeString, value)
		_node.Title = value
	}
	if value, ok := cc.mutation.Description(); ok {
		_spec.SetField(course.FieldDescription, field.TypeString, value)
		_node.Description = value
	}
	if value, ok := cc.mutation.Color(); ok {
		_spec.SetField(course.FieldColor, field.TypeString, value)
		_node.Color = value
	}
	if value, ok := cc.mutation.Active(); ok {
		_spec.SetField(course.FieldActive, field.TypeBool, value)
		_node.Active = value
	}
	if value, ok := cc.mutation.Order(); ok {
		_spec.SetField(course.FieldOrder, field.TypeInt, value)
		_node.Order = value
	}
	if nodes := cc.mutation.UnitsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   course.UnitsTable,
			Columns: []string{course.UnitsColumn},
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

// CourseCreateBulk is the builder for creating many Course entities in bulk.
type CourseCreateBulk struct {
	config
	err      error
	builders []*CourseCreate
}

// Save creates the Course entities in the database.
func (ccb *CourseCreateBulk) Save(ctx context.Context) ([]*Course, error) {
	if ccb.err != nil {
		return nil, ccb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(ccb.builders))
	nodes := make([]*Course, len(ccb.builders))
	mutators := make([]Mutator, len(ccb.builders))
	for i := range ccb.builders {
		func(i int, root context.Context) {
			builder := ccb.builders[i]
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*CourseMutation)
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
					_, err = mutators[i+1].Mutate(root, ccb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, ccb.driver, spec); err != nil {
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
		if _, err := mutators[0].Mutate(ctx, ccb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (ccb *CourseCreateBulk) SaveX(ctx context.Context) []*Course {
	v, err := ccb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (ccb *CourseCreateBulk) Exec(ctx context.Context) error {
	_, err := ccb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ccb *CourseCreateBulk) ExecX(ctx context.Context) {
	if err := ccb.Exec(ctx); err != nil {
		panic(err)
	}
}
