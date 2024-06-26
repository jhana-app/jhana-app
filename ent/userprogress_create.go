// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"
	"time"

	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/course"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/property"
	"github.com/jhana-app/jhana-app/ent/unit"
	"github.com/jhana-app/jhana-app/ent/user"
	"github.com/jhana-app/jhana-app/ent/userprogress"
)

// UserProgressCreate is the builder for creating a UserProgress entity.
type UserProgressCreate struct {
	config
	mutation *UserProgressMutation
	hooks    []Hook
}

// SetUserID sets the "user_id" field.
func (upc *UserProgressCreate) SetUserID(gi gqlid.UserID) *UserProgressCreate {
	upc.mutation.SetUserID(gi)
	return upc
}

// SetCourseID sets the "course_id" field.
func (upc *UserProgressCreate) SetCourseID(gi gqlid.CourseID) *UserProgressCreate {
	upc.mutation.SetCourseID(gi)
	return upc
}

// SetUnitID sets the "unit_id" field.
func (upc *UserProgressCreate) SetUnitID(gi gqlid.UnitID) *UserProgressCreate {
	upc.mutation.SetUnitID(gi)
	return upc
}

// SetLessonID sets the "lesson_id" field.
func (upc *UserProgressCreate) SetLessonID(gi gqlid.LessonID) *UserProgressCreate {
	upc.mutation.SetLessonID(gi)
	return upc
}

// SetLessonType sets the "lesson_type" field.
func (upc *UserProgressCreate) SetLessonType(pt property.LessonType) *UserProgressCreate {
	upc.mutation.SetLessonType(pt)
	return upc
}

// SetIsLast sets the "isLast" field.
func (upc *UserProgressCreate) SetIsLast(b bool) *UserProgressCreate {
	upc.mutation.SetIsLast(b)
	return upc
}

// SetIsNext sets the "isNext" field.
func (upc *UserProgressCreate) SetIsNext(b bool) *UserProgressCreate {
	upc.mutation.SetIsNext(b)
	return upc
}

// SetProgress sets the "progress" field.
func (upc *UserProgressCreate) SetProgress(i int64) *UserProgressCreate {
	upc.mutation.SetProgress(i)
	return upc
}

// SetNillableProgress sets the "progress" field if the given value is not nil.
func (upc *UserProgressCreate) SetNillableProgress(i *int64) *UserProgressCreate {
	if i != nil {
		upc.SetProgress(*i)
	}
	return upc
}

// SetFinishedAt sets the "finishedAt" field.
func (upc *UserProgressCreate) SetFinishedAt(t time.Time) *UserProgressCreate {
	upc.mutation.SetFinishedAt(t)
	return upc
}

// SetNillableFinishedAt sets the "finishedAt" field if the given value is not nil.
func (upc *UserProgressCreate) SetNillableFinishedAt(t *time.Time) *UserProgressCreate {
	if t != nil {
		upc.SetFinishedAt(*t)
	}
	return upc
}

// SetCreatedAt sets the "createdAt" field.
func (upc *UserProgressCreate) SetCreatedAt(t time.Time) *UserProgressCreate {
	upc.mutation.SetCreatedAt(t)
	return upc
}

// SetNillableCreatedAt sets the "createdAt" field if the given value is not nil.
func (upc *UserProgressCreate) SetNillableCreatedAt(t *time.Time) *UserProgressCreate {
	if t != nil {
		upc.SetCreatedAt(*t)
	}
	return upc
}

// SetUpdatedAt sets the "updatedAt" field.
func (upc *UserProgressCreate) SetUpdatedAt(t time.Time) *UserProgressCreate {
	upc.mutation.SetUpdatedAt(t)
	return upc
}

// SetNillableUpdatedAt sets the "updatedAt" field if the given value is not nil.
func (upc *UserProgressCreate) SetNillableUpdatedAt(t *time.Time) *UserProgressCreate {
	if t != nil {
		upc.SetUpdatedAt(*t)
	}
	return upc
}

// SetID sets the "id" field.
func (upc *UserProgressCreate) SetID(gpi gqlid.UserProgressID) *UserProgressCreate {
	upc.mutation.SetID(gpi)
	return upc
}

// SetUser sets the "user" edge to the User entity.
func (upc *UserProgressCreate) SetUser(u *User) *UserProgressCreate {
	return upc.SetUserID(u.ID)
}

// SetCourse sets the "course" edge to the Course entity.
func (upc *UserProgressCreate) SetCourse(c *Course) *UserProgressCreate {
	return upc.SetCourseID(c.ID)
}

// SetUnit sets the "unit" edge to the Unit entity.
func (upc *UserProgressCreate) SetUnit(u *Unit) *UserProgressCreate {
	return upc.SetUnitID(u.ID)
}

// SetLesson sets the "lesson" edge to the Lesson entity.
func (upc *UserProgressCreate) SetLesson(l *Lesson) *UserProgressCreate {
	return upc.SetLessonID(l.ID)
}

// Mutation returns the UserProgressMutation object of the builder.
func (upc *UserProgressCreate) Mutation() *UserProgressMutation {
	return upc.mutation
}

// Save creates the UserProgress in the database.
func (upc *UserProgressCreate) Save(ctx context.Context) (*UserProgress, error) {
	upc.defaults()
	return withHooks(ctx, upc.sqlSave, upc.mutation, upc.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (upc *UserProgressCreate) SaveX(ctx context.Context) *UserProgress {
	v, err := upc.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (upc *UserProgressCreate) Exec(ctx context.Context) error {
	_, err := upc.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (upc *UserProgressCreate) ExecX(ctx context.Context) {
	if err := upc.Exec(ctx); err != nil {
		panic(err)
	}
}

// defaults sets the default values of the builder before save.
func (upc *UserProgressCreate) defaults() {
	if _, ok := upc.mutation.Progress(); !ok {
		v := userprogress.DefaultProgress
		upc.mutation.SetProgress(v)
	}
	if _, ok := upc.mutation.CreatedAt(); !ok {
		v := userprogress.DefaultCreatedAt()
		upc.mutation.SetCreatedAt(v)
	}
	if _, ok := upc.mutation.UpdatedAt(); !ok {
		v := userprogress.DefaultUpdatedAt()
		upc.mutation.SetUpdatedAt(v)
	}
}

// check runs all checks and user-defined validators on the builder.
func (upc *UserProgressCreate) check() error {
	if _, ok := upc.mutation.UserID(); !ok {
		return &ValidationError{Name: "user_id", err: errors.New(`ent: missing required field "UserProgress.user_id"`)}
	}
	if _, ok := upc.mutation.CourseID(); !ok {
		return &ValidationError{Name: "course_id", err: errors.New(`ent: missing required field "UserProgress.course_id"`)}
	}
	if _, ok := upc.mutation.UnitID(); !ok {
		return &ValidationError{Name: "unit_id", err: errors.New(`ent: missing required field "UserProgress.unit_id"`)}
	}
	if _, ok := upc.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson_id", err: errors.New(`ent: missing required field "UserProgress.lesson_id"`)}
	}
	if _, ok := upc.mutation.LessonType(); !ok {
		return &ValidationError{Name: "lesson_type", err: errors.New(`ent: missing required field "UserProgress.lesson_type"`)}
	}
	if v, ok := upc.mutation.LessonType(); ok {
		if err := userprogress.LessonTypeValidator(v); err != nil {
			return &ValidationError{Name: "lesson_type", err: fmt.Errorf(`ent: validator failed for field "UserProgress.lesson_type": %w`, err)}
		}
	}
	if _, ok := upc.mutation.IsLast(); !ok {
		return &ValidationError{Name: "isLast", err: errors.New(`ent: missing required field "UserProgress.isLast"`)}
	}
	if _, ok := upc.mutation.IsNext(); !ok {
		return &ValidationError{Name: "isNext", err: errors.New(`ent: missing required field "UserProgress.isNext"`)}
	}
	if _, ok := upc.mutation.Progress(); !ok {
		return &ValidationError{Name: "progress", err: errors.New(`ent: missing required field "UserProgress.progress"`)}
	}
	if _, ok := upc.mutation.CreatedAt(); !ok {
		return &ValidationError{Name: "createdAt", err: errors.New(`ent: missing required field "UserProgress.createdAt"`)}
	}
	if _, ok := upc.mutation.UpdatedAt(); !ok {
		return &ValidationError{Name: "updatedAt", err: errors.New(`ent: missing required field "UserProgress.updatedAt"`)}
	}
	if _, ok := upc.mutation.UserID(); !ok {
		return &ValidationError{Name: "user", err: errors.New(`ent: missing required edge "UserProgress.user"`)}
	}
	if _, ok := upc.mutation.CourseID(); !ok {
		return &ValidationError{Name: "course", err: errors.New(`ent: missing required edge "UserProgress.course"`)}
	}
	if _, ok := upc.mutation.UnitID(); !ok {
		return &ValidationError{Name: "unit", err: errors.New(`ent: missing required edge "UserProgress.unit"`)}
	}
	if _, ok := upc.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson", err: errors.New(`ent: missing required edge "UserProgress.lesson"`)}
	}
	return nil
}

func (upc *UserProgressCreate) sqlSave(ctx context.Context) (*UserProgress, error) {
	if err := upc.check(); err != nil {
		return nil, err
	}
	_node, _spec := upc.createSpec()
	if err := sqlgraph.CreateNode(ctx, upc.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	if _spec.ID.Value != nil {
		if id, ok := _spec.ID.Value.(*gqlid.UserProgressID); ok {
			_node.ID = *id
		} else if err := _node.ID.Scan(_spec.ID.Value); err != nil {
			return nil, err
		}
	}
	upc.mutation.id = &_node.ID
	upc.mutation.done = true
	return _node, nil
}

func (upc *UserProgressCreate) createSpec() (*UserProgress, *sqlgraph.CreateSpec) {
	var (
		_node = &UserProgress{config: upc.config}
		_spec = sqlgraph.NewCreateSpec(userprogress.Table, sqlgraph.NewFieldSpec(userprogress.FieldID, field.TypeInt64))
	)
	if id, ok := upc.mutation.ID(); ok {
		_node.ID = id
		_spec.ID.Value = &id
	}
	if value, ok := upc.mutation.LessonType(); ok {
		_spec.SetField(userprogress.FieldLessonType, field.TypeEnum, value)
		_node.LessonType = value
	}
	if value, ok := upc.mutation.IsLast(); ok {
		_spec.SetField(userprogress.FieldIsLast, field.TypeBool, value)
		_node.IsLast = value
	}
	if value, ok := upc.mutation.IsNext(); ok {
		_spec.SetField(userprogress.FieldIsNext, field.TypeBool, value)
		_node.IsNext = value
	}
	if value, ok := upc.mutation.Progress(); ok {
		_spec.SetField(userprogress.FieldProgress, field.TypeInt64, value)
		_node.Progress = value
	}
	if value, ok := upc.mutation.FinishedAt(); ok {
		_spec.SetField(userprogress.FieldFinishedAt, field.TypeTime, value)
		_node.FinishedAt = &value
	}
	if value, ok := upc.mutation.CreatedAt(); ok {
		_spec.SetField(userprogress.FieldCreatedAt, field.TypeTime, value)
		_node.CreatedAt = value
	}
	if value, ok := upc.mutation.UpdatedAt(); ok {
		_spec.SetField(userprogress.FieldUpdatedAt, field.TypeTime, value)
		_node.UpdatedAt = value
	}
	if nodes := upc.mutation.UserIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   userprogress.UserTable,
			Columns: []string{userprogress.UserColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(user.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.UserID = nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := upc.mutation.CourseIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   userprogress.CourseTable,
			Columns: []string{userprogress.CourseColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(course.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.CourseID = nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := upc.mutation.UnitIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   userprogress.UnitTable,
			Columns: []string{userprogress.UnitColumn},
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
	if nodes := upc.mutation.LessonIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   userprogress.LessonTable,
			Columns: []string{userprogress.LessonColumn},
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
	return _node, _spec
}

// UserProgressCreateBulk is the builder for creating many UserProgress entities in bulk.
type UserProgressCreateBulk struct {
	config
	err      error
	builders []*UserProgressCreate
}

// Save creates the UserProgress entities in the database.
func (upcb *UserProgressCreateBulk) Save(ctx context.Context) ([]*UserProgress, error) {
	if upcb.err != nil {
		return nil, upcb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(upcb.builders))
	nodes := make([]*UserProgress, len(upcb.builders))
	mutators := make([]Mutator, len(upcb.builders))
	for i := range upcb.builders {
		func(i int, root context.Context) {
			builder := upcb.builders[i]
			builder.defaults()
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*UserProgressMutation)
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
					_, err = mutators[i+1].Mutate(root, upcb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, upcb.driver, spec); err != nil {
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
		if _, err := mutators[0].Mutate(ctx, upcb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (upcb *UserProgressCreateBulk) SaveX(ctx context.Context) []*UserProgress {
	v, err := upcb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (upcb *UserProgressCreateBulk) Exec(ctx context.Context) error {
	_, err := upcb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (upcb *UserProgressCreateBulk) ExecX(ctx context.Context) {
	if err := upcb.Exec(ctx); err != nil {
		panic(err)
	}
}
