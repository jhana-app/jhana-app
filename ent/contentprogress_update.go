// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"
	"time"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/contentprogress"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// ContentProgressUpdate is the builder for updating ContentProgress entities.
type ContentProgressUpdate struct {
	config
	hooks     []Hook
	mutation  *ContentProgressMutation
	modifiers []func(*sql.UpdateBuilder)
}

// Where appends a list predicates to the ContentProgressUpdate builder.
func (cpu *ContentProgressUpdate) Where(ps ...predicate.ContentProgress) *ContentProgressUpdate {
	cpu.mutation.Where(ps...)
	return cpu
}

// SetProgress sets the "progress" field.
func (cpu *ContentProgressUpdate) SetProgress(i int64) *ContentProgressUpdate {
	cpu.mutation.ResetProgress()
	cpu.mutation.SetProgress(i)
	return cpu
}

// SetNillableProgress sets the "progress" field if the given value is not nil.
func (cpu *ContentProgressUpdate) SetNillableProgress(i *int64) *ContentProgressUpdate {
	if i != nil {
		cpu.SetProgress(*i)
	}
	return cpu
}

// AddProgress adds i to the "progress" field.
func (cpu *ContentProgressUpdate) AddProgress(i int64) *ContentProgressUpdate {
	cpu.mutation.AddProgress(i)
	return cpu
}

// SetFinishedAt sets the "finishedAt" field.
func (cpu *ContentProgressUpdate) SetFinishedAt(t time.Time) *ContentProgressUpdate {
	cpu.mutation.SetFinishedAt(t)
	return cpu
}

// SetNillableFinishedAt sets the "finishedAt" field if the given value is not nil.
func (cpu *ContentProgressUpdate) SetNillableFinishedAt(t *time.Time) *ContentProgressUpdate {
	if t != nil {
		cpu.SetFinishedAt(*t)
	}
	return cpu
}

// ClearFinishedAt clears the value of the "finishedAt" field.
func (cpu *ContentProgressUpdate) ClearFinishedAt() *ContentProgressUpdate {
	cpu.mutation.ClearFinishedAt()
	return cpu
}

// SetUpdatedAt sets the "updatedAt" field.
func (cpu *ContentProgressUpdate) SetUpdatedAt(t time.Time) *ContentProgressUpdate {
	cpu.mutation.SetUpdatedAt(t)
	return cpu
}

// SetNillableUpdatedAt sets the "updatedAt" field if the given value is not nil.
func (cpu *ContentProgressUpdate) SetNillableUpdatedAt(t *time.Time) *ContentProgressUpdate {
	if t != nil {
		cpu.SetUpdatedAt(*t)
	}
	return cpu
}

// Mutation returns the ContentProgressMutation object of the builder.
func (cpu *ContentProgressUpdate) Mutation() *ContentProgressMutation {
	return cpu.mutation
}

// Save executes the query and returns the number of nodes affected by the update operation.
func (cpu *ContentProgressUpdate) Save(ctx context.Context) (int, error) {
	return withHooks(ctx, cpu.sqlSave, cpu.mutation, cpu.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (cpu *ContentProgressUpdate) SaveX(ctx context.Context) int {
	affected, err := cpu.Save(ctx)
	if err != nil {
		panic(err)
	}
	return affected
}

// Exec executes the query.
func (cpu *ContentProgressUpdate) Exec(ctx context.Context) error {
	_, err := cpu.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (cpu *ContentProgressUpdate) ExecX(ctx context.Context) {
	if err := cpu.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (cpu *ContentProgressUpdate) check() error {
	if _, ok := cpu.mutation.UserID(); cpu.mutation.UserCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.user"`)
	}
	if _, ok := cpu.mutation.ContentID(); cpu.mutation.ContentCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.content"`)
	}
	if _, ok := cpu.mutation.EpisodeID(); cpu.mutation.EpisodeCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.episode"`)
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (cpu *ContentProgressUpdate) Modify(modifiers ...func(u *sql.UpdateBuilder)) *ContentProgressUpdate {
	cpu.modifiers = append(cpu.modifiers, modifiers...)
	return cpu
}

func (cpu *ContentProgressUpdate) sqlSave(ctx context.Context) (n int, err error) {
	if err := cpu.check(); err != nil {
		return n, err
	}
	_spec := sqlgraph.NewUpdateSpec(contentprogress.Table, contentprogress.Columns, sqlgraph.NewFieldSpec(contentprogress.FieldID, field.TypeInt64))
	if ps := cpu.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := cpu.mutation.Progress(); ok {
		_spec.SetField(contentprogress.FieldProgress, field.TypeInt64, value)
	}
	if value, ok := cpu.mutation.AddedProgress(); ok {
		_spec.AddField(contentprogress.FieldProgress, field.TypeInt64, value)
	}
	if value, ok := cpu.mutation.FinishedAt(); ok {
		_spec.SetField(contentprogress.FieldFinishedAt, field.TypeTime, value)
	}
	if cpu.mutation.FinishedAtCleared() {
		_spec.ClearField(contentprogress.FieldFinishedAt, field.TypeTime)
	}
	if value, ok := cpu.mutation.UpdatedAt(); ok {
		_spec.SetField(contentprogress.FieldUpdatedAt, field.TypeTime, value)
	}
	_spec.AddModifiers(cpu.modifiers...)
	if n, err = sqlgraph.UpdateNodes(ctx, cpu.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{contentprogress.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return 0, err
	}
	cpu.mutation.done = true
	return n, nil
}

// ContentProgressUpdateOne is the builder for updating a single ContentProgress entity.
type ContentProgressUpdateOne struct {
	config
	fields    []string
	hooks     []Hook
	mutation  *ContentProgressMutation
	modifiers []func(*sql.UpdateBuilder)
}

// SetProgress sets the "progress" field.
func (cpuo *ContentProgressUpdateOne) SetProgress(i int64) *ContentProgressUpdateOne {
	cpuo.mutation.ResetProgress()
	cpuo.mutation.SetProgress(i)
	return cpuo
}

// SetNillableProgress sets the "progress" field if the given value is not nil.
func (cpuo *ContentProgressUpdateOne) SetNillableProgress(i *int64) *ContentProgressUpdateOne {
	if i != nil {
		cpuo.SetProgress(*i)
	}
	return cpuo
}

// AddProgress adds i to the "progress" field.
func (cpuo *ContentProgressUpdateOne) AddProgress(i int64) *ContentProgressUpdateOne {
	cpuo.mutation.AddProgress(i)
	return cpuo
}

// SetFinishedAt sets the "finishedAt" field.
func (cpuo *ContentProgressUpdateOne) SetFinishedAt(t time.Time) *ContentProgressUpdateOne {
	cpuo.mutation.SetFinishedAt(t)
	return cpuo
}

// SetNillableFinishedAt sets the "finishedAt" field if the given value is not nil.
func (cpuo *ContentProgressUpdateOne) SetNillableFinishedAt(t *time.Time) *ContentProgressUpdateOne {
	if t != nil {
		cpuo.SetFinishedAt(*t)
	}
	return cpuo
}

// ClearFinishedAt clears the value of the "finishedAt" field.
func (cpuo *ContentProgressUpdateOne) ClearFinishedAt() *ContentProgressUpdateOne {
	cpuo.mutation.ClearFinishedAt()
	return cpuo
}

// SetUpdatedAt sets the "updatedAt" field.
func (cpuo *ContentProgressUpdateOne) SetUpdatedAt(t time.Time) *ContentProgressUpdateOne {
	cpuo.mutation.SetUpdatedAt(t)
	return cpuo
}

// SetNillableUpdatedAt sets the "updatedAt" field if the given value is not nil.
func (cpuo *ContentProgressUpdateOne) SetNillableUpdatedAt(t *time.Time) *ContentProgressUpdateOne {
	if t != nil {
		cpuo.SetUpdatedAt(*t)
	}
	return cpuo
}

// Mutation returns the ContentProgressMutation object of the builder.
func (cpuo *ContentProgressUpdateOne) Mutation() *ContentProgressMutation {
	return cpuo.mutation
}

// Where appends a list predicates to the ContentProgressUpdate builder.
func (cpuo *ContentProgressUpdateOne) Where(ps ...predicate.ContentProgress) *ContentProgressUpdateOne {
	cpuo.mutation.Where(ps...)
	return cpuo
}

// Select allows selecting one or more fields (columns) of the returned entity.
// The default is selecting all fields defined in the entity schema.
func (cpuo *ContentProgressUpdateOne) Select(field string, fields ...string) *ContentProgressUpdateOne {
	cpuo.fields = append([]string{field}, fields...)
	return cpuo
}

// Save executes the query and returns the updated ContentProgress entity.
func (cpuo *ContentProgressUpdateOne) Save(ctx context.Context) (*ContentProgress, error) {
	return withHooks(ctx, cpuo.sqlSave, cpuo.mutation, cpuo.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (cpuo *ContentProgressUpdateOne) SaveX(ctx context.Context) *ContentProgress {
	node, err := cpuo.Save(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// Exec executes the query on the entity.
func (cpuo *ContentProgressUpdateOne) Exec(ctx context.Context) error {
	_, err := cpuo.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (cpuo *ContentProgressUpdateOne) ExecX(ctx context.Context) {
	if err := cpuo.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (cpuo *ContentProgressUpdateOne) check() error {
	if _, ok := cpuo.mutation.UserID(); cpuo.mutation.UserCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.user"`)
	}
	if _, ok := cpuo.mutation.ContentID(); cpuo.mutation.ContentCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.content"`)
	}
	if _, ok := cpuo.mutation.EpisodeID(); cpuo.mutation.EpisodeCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "ContentProgress.episode"`)
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (cpuo *ContentProgressUpdateOne) Modify(modifiers ...func(u *sql.UpdateBuilder)) *ContentProgressUpdateOne {
	cpuo.modifiers = append(cpuo.modifiers, modifiers...)
	return cpuo
}

func (cpuo *ContentProgressUpdateOne) sqlSave(ctx context.Context) (_node *ContentProgress, err error) {
	if err := cpuo.check(); err != nil {
		return _node, err
	}
	_spec := sqlgraph.NewUpdateSpec(contentprogress.Table, contentprogress.Columns, sqlgraph.NewFieldSpec(contentprogress.FieldID, field.TypeInt64))
	id, ok := cpuo.mutation.ID()
	if !ok {
		return nil, &ValidationError{Name: "id", err: errors.New(`ent: missing "ContentProgress.id" for update`)}
	}
	_spec.Node.ID.Value = id
	if fields := cpuo.fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, contentprogress.FieldID)
		for _, f := range fields {
			if !contentprogress.ValidColumn(f) {
				return nil, &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
			}
			if f != contentprogress.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, f)
			}
		}
	}
	if ps := cpuo.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := cpuo.mutation.Progress(); ok {
		_spec.SetField(contentprogress.FieldProgress, field.TypeInt64, value)
	}
	if value, ok := cpuo.mutation.AddedProgress(); ok {
		_spec.AddField(contentprogress.FieldProgress, field.TypeInt64, value)
	}
	if value, ok := cpuo.mutation.FinishedAt(); ok {
		_spec.SetField(contentprogress.FieldFinishedAt, field.TypeTime, value)
	}
	if cpuo.mutation.FinishedAtCleared() {
		_spec.ClearField(contentprogress.FieldFinishedAt, field.TypeTime)
	}
	if value, ok := cpuo.mutation.UpdatedAt(); ok {
		_spec.SetField(contentprogress.FieldUpdatedAt, field.TypeTime, value)
	}
	_spec.AddModifiers(cpuo.modifiers...)
	_node = &ContentProgress{config: cpuo.config}
	_spec.Assign = _node.assignValues
	_spec.ScanValues = _node.scanValues
	if err = sqlgraph.UpdateNode(ctx, cpuo.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{contentprogress.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	cpuo.mutation.done = true
	return _node, nil
}
