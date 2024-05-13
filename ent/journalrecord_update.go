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
	"github.com/jhana-app/jhana-app/ent/journalrecord"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// JournalRecordUpdate is the builder for updating JournalRecord entities.
type JournalRecordUpdate struct {
	config
	hooks     []Hook
	mutation  *JournalRecordMutation
	modifiers []func(*sql.UpdateBuilder)
}

// Where appends a list predicates to the JournalRecordUpdate builder.
func (jru *JournalRecordUpdate) Where(ps ...predicate.JournalRecord) *JournalRecordUpdate {
	jru.mutation.Where(ps...)
	return jru
}

// SetDateTime sets the "dateTime" field.
func (jru *JournalRecordUpdate) SetDateTime(t time.Time) *JournalRecordUpdate {
	jru.mutation.SetDateTime(t)
	return jru
}

// SetNillableDateTime sets the "dateTime" field if the given value is not nil.
func (jru *JournalRecordUpdate) SetNillableDateTime(t *time.Time) *JournalRecordUpdate {
	if t != nil {
		jru.SetDateTime(*t)
	}
	return jru
}

// SetDuration sets the "duration" field.
func (jru *JournalRecordUpdate) SetDuration(i int) *JournalRecordUpdate {
	jru.mutation.ResetDuration()
	jru.mutation.SetDuration(i)
	return jru
}

// SetNillableDuration sets the "duration" field if the given value is not nil.
func (jru *JournalRecordUpdate) SetNillableDuration(i *int) *JournalRecordUpdate {
	if i != nil {
		jru.SetDuration(*i)
	}
	return jru
}

// AddDuration adds i to the "duration" field.
func (jru *JournalRecordUpdate) AddDuration(i int) *JournalRecordUpdate {
	jru.mutation.AddDuration(i)
	return jru
}

// SetNote sets the "note" field.
func (jru *JournalRecordUpdate) SetNote(s string) *JournalRecordUpdate {
	jru.mutation.SetNote(s)
	return jru
}

// SetNillableNote sets the "note" field if the given value is not nil.
func (jru *JournalRecordUpdate) SetNillableNote(s *string) *JournalRecordUpdate {
	if s != nil {
		jru.SetNote(*s)
	}
	return jru
}

// SetUpdatedAt sets the "updatedAt" field.
func (jru *JournalRecordUpdate) SetUpdatedAt(t time.Time) *JournalRecordUpdate {
	jru.mutation.SetUpdatedAt(t)
	return jru
}

// Mutation returns the JournalRecordMutation object of the builder.
func (jru *JournalRecordUpdate) Mutation() *JournalRecordMutation {
	return jru.mutation
}

// Save executes the query and returns the number of nodes affected by the update operation.
func (jru *JournalRecordUpdate) Save(ctx context.Context) (int, error) {
	jru.defaults()
	return withHooks(ctx, jru.sqlSave, jru.mutation, jru.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (jru *JournalRecordUpdate) SaveX(ctx context.Context) int {
	affected, err := jru.Save(ctx)
	if err != nil {
		panic(err)
	}
	return affected
}

// Exec executes the query.
func (jru *JournalRecordUpdate) Exec(ctx context.Context) error {
	_, err := jru.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (jru *JournalRecordUpdate) ExecX(ctx context.Context) {
	if err := jru.Exec(ctx); err != nil {
		panic(err)
	}
}

// defaults sets the default values of the builder before save.
func (jru *JournalRecordUpdate) defaults() {
	if _, ok := jru.mutation.UpdatedAt(); !ok {
		v := journalrecord.UpdateDefaultUpdatedAt()
		jru.mutation.SetUpdatedAt(v)
	}
}

// check runs all checks and user-defined validators on the builder.
func (jru *JournalRecordUpdate) check() error {
	if _, ok := jru.mutation.UserID(); jru.mutation.UserCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "JournalRecord.user"`)
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (jru *JournalRecordUpdate) Modify(modifiers ...func(u *sql.UpdateBuilder)) *JournalRecordUpdate {
	jru.modifiers = append(jru.modifiers, modifiers...)
	return jru
}

func (jru *JournalRecordUpdate) sqlSave(ctx context.Context) (n int, err error) {
	if err := jru.check(); err != nil {
		return n, err
	}
	_spec := sqlgraph.NewUpdateSpec(journalrecord.Table, journalrecord.Columns, sqlgraph.NewFieldSpec(journalrecord.FieldID, field.TypeInt64))
	if ps := jru.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := jru.mutation.DateTime(); ok {
		_spec.SetField(journalrecord.FieldDateTime, field.TypeTime, value)
	}
	if value, ok := jru.mutation.Duration(); ok {
		_spec.SetField(journalrecord.FieldDuration, field.TypeInt, value)
	}
	if value, ok := jru.mutation.AddedDuration(); ok {
		_spec.AddField(journalrecord.FieldDuration, field.TypeInt, value)
	}
	if value, ok := jru.mutation.Note(); ok {
		_spec.SetField(journalrecord.FieldNote, field.TypeString, value)
	}
	if value, ok := jru.mutation.UpdatedAt(); ok {
		_spec.SetField(journalrecord.FieldUpdatedAt, field.TypeTime, value)
	}
	_spec.AddModifiers(jru.modifiers...)
	if n, err = sqlgraph.UpdateNodes(ctx, jru.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{journalrecord.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return 0, err
	}
	jru.mutation.done = true
	return n, nil
}

// JournalRecordUpdateOne is the builder for updating a single JournalRecord entity.
type JournalRecordUpdateOne struct {
	config
	fields    []string
	hooks     []Hook
	mutation  *JournalRecordMutation
	modifiers []func(*sql.UpdateBuilder)
}

// SetDateTime sets the "dateTime" field.
func (jruo *JournalRecordUpdateOne) SetDateTime(t time.Time) *JournalRecordUpdateOne {
	jruo.mutation.SetDateTime(t)
	return jruo
}

// SetNillableDateTime sets the "dateTime" field if the given value is not nil.
func (jruo *JournalRecordUpdateOne) SetNillableDateTime(t *time.Time) *JournalRecordUpdateOne {
	if t != nil {
		jruo.SetDateTime(*t)
	}
	return jruo
}

// SetDuration sets the "duration" field.
func (jruo *JournalRecordUpdateOne) SetDuration(i int) *JournalRecordUpdateOne {
	jruo.mutation.ResetDuration()
	jruo.mutation.SetDuration(i)
	return jruo
}

// SetNillableDuration sets the "duration" field if the given value is not nil.
func (jruo *JournalRecordUpdateOne) SetNillableDuration(i *int) *JournalRecordUpdateOne {
	if i != nil {
		jruo.SetDuration(*i)
	}
	return jruo
}

// AddDuration adds i to the "duration" field.
func (jruo *JournalRecordUpdateOne) AddDuration(i int) *JournalRecordUpdateOne {
	jruo.mutation.AddDuration(i)
	return jruo
}

// SetNote sets the "note" field.
func (jruo *JournalRecordUpdateOne) SetNote(s string) *JournalRecordUpdateOne {
	jruo.mutation.SetNote(s)
	return jruo
}

// SetNillableNote sets the "note" field if the given value is not nil.
func (jruo *JournalRecordUpdateOne) SetNillableNote(s *string) *JournalRecordUpdateOne {
	if s != nil {
		jruo.SetNote(*s)
	}
	return jruo
}

// SetUpdatedAt sets the "updatedAt" field.
func (jruo *JournalRecordUpdateOne) SetUpdatedAt(t time.Time) *JournalRecordUpdateOne {
	jruo.mutation.SetUpdatedAt(t)
	return jruo
}

// Mutation returns the JournalRecordMutation object of the builder.
func (jruo *JournalRecordUpdateOne) Mutation() *JournalRecordMutation {
	return jruo.mutation
}

// Where appends a list predicates to the JournalRecordUpdate builder.
func (jruo *JournalRecordUpdateOne) Where(ps ...predicate.JournalRecord) *JournalRecordUpdateOne {
	jruo.mutation.Where(ps...)
	return jruo
}

// Select allows selecting one or more fields (columns) of the returned entity.
// The default is selecting all fields defined in the entity schema.
func (jruo *JournalRecordUpdateOne) Select(field string, fields ...string) *JournalRecordUpdateOne {
	jruo.fields = append([]string{field}, fields...)
	return jruo
}

// Save executes the query and returns the updated JournalRecord entity.
func (jruo *JournalRecordUpdateOne) Save(ctx context.Context) (*JournalRecord, error) {
	jruo.defaults()
	return withHooks(ctx, jruo.sqlSave, jruo.mutation, jruo.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (jruo *JournalRecordUpdateOne) SaveX(ctx context.Context) *JournalRecord {
	node, err := jruo.Save(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// Exec executes the query on the entity.
func (jruo *JournalRecordUpdateOne) Exec(ctx context.Context) error {
	_, err := jruo.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (jruo *JournalRecordUpdateOne) ExecX(ctx context.Context) {
	if err := jruo.Exec(ctx); err != nil {
		panic(err)
	}
}

// defaults sets the default values of the builder before save.
func (jruo *JournalRecordUpdateOne) defaults() {
	if _, ok := jruo.mutation.UpdatedAt(); !ok {
		v := journalrecord.UpdateDefaultUpdatedAt()
		jruo.mutation.SetUpdatedAt(v)
	}
}

// check runs all checks and user-defined validators on the builder.
func (jruo *JournalRecordUpdateOne) check() error {
	if _, ok := jruo.mutation.UserID(); jruo.mutation.UserCleared() && !ok {
		return errors.New(`ent: clearing a required unique edge "JournalRecord.user"`)
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (jruo *JournalRecordUpdateOne) Modify(modifiers ...func(u *sql.UpdateBuilder)) *JournalRecordUpdateOne {
	jruo.modifiers = append(jruo.modifiers, modifiers...)
	return jruo
}

func (jruo *JournalRecordUpdateOne) sqlSave(ctx context.Context) (_node *JournalRecord, err error) {
	if err := jruo.check(); err != nil {
		return _node, err
	}
	_spec := sqlgraph.NewUpdateSpec(journalrecord.Table, journalrecord.Columns, sqlgraph.NewFieldSpec(journalrecord.FieldID, field.TypeInt64))
	id, ok := jruo.mutation.ID()
	if !ok {
		return nil, &ValidationError{Name: "id", err: errors.New(`ent: missing "JournalRecord.id" for update`)}
	}
	_spec.Node.ID.Value = id
	if fields := jruo.fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, journalrecord.FieldID)
		for _, f := range fields {
			if !journalrecord.ValidColumn(f) {
				return nil, &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
			}
			if f != journalrecord.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, f)
			}
		}
	}
	if ps := jruo.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := jruo.mutation.DateTime(); ok {
		_spec.SetField(journalrecord.FieldDateTime, field.TypeTime, value)
	}
	if value, ok := jruo.mutation.Duration(); ok {
		_spec.SetField(journalrecord.FieldDuration, field.TypeInt, value)
	}
	if value, ok := jruo.mutation.AddedDuration(); ok {
		_spec.AddField(journalrecord.FieldDuration, field.TypeInt, value)
	}
	if value, ok := jruo.mutation.Note(); ok {
		_spec.SetField(journalrecord.FieldNote, field.TypeString, value)
	}
	if value, ok := jruo.mutation.UpdatedAt(); ok {
		_spec.SetField(journalrecord.FieldUpdatedAt, field.TypeTime, value)
	}
	_spec.AddModifiers(jruo.modifiers...)
	_node = &JournalRecord{config: jruo.config}
	_spec.Assign = _node.assignValues
	_spec.ScanValues = _node.scanValues
	if err = sqlgraph.UpdateNode(ctx, jruo.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{journalrecord.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	jruo.mutation.done = true
	return _node, nil
}