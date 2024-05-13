// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/journalrecord"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// JournalRecordDelete is the builder for deleting a JournalRecord entity.
type JournalRecordDelete struct {
	config
	hooks    []Hook
	mutation *JournalRecordMutation
}

// Where appends a list predicates to the JournalRecordDelete builder.
func (jrd *JournalRecordDelete) Where(ps ...predicate.JournalRecord) *JournalRecordDelete {
	jrd.mutation.Where(ps...)
	return jrd
}

// Exec executes the deletion query and returns how many vertices were deleted.
func (jrd *JournalRecordDelete) Exec(ctx context.Context) (int, error) {
	return withHooks(ctx, jrd.sqlExec, jrd.mutation, jrd.hooks)
}

// ExecX is like Exec, but panics if an error occurs.
func (jrd *JournalRecordDelete) ExecX(ctx context.Context) int {
	n, err := jrd.Exec(ctx)
	if err != nil {
		panic(err)
	}
	return n
}

func (jrd *JournalRecordDelete) sqlExec(ctx context.Context) (int, error) {
	_spec := sqlgraph.NewDeleteSpec(journalrecord.Table, sqlgraph.NewFieldSpec(journalrecord.FieldID, field.TypeInt64))
	if ps := jrd.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	affected, err := sqlgraph.DeleteNodes(ctx, jrd.driver, _spec)
	if err != nil && sqlgraph.IsConstraintError(err) {
		err = &ConstraintError{msg: err.Error(), wrap: err}
	}
	jrd.mutation.done = true
	return affected, err
}

// JournalRecordDeleteOne is the builder for deleting a single JournalRecord entity.
type JournalRecordDeleteOne struct {
	jrd *JournalRecordDelete
}

// Where appends a list predicates to the JournalRecordDelete builder.
func (jrdo *JournalRecordDeleteOne) Where(ps ...predicate.JournalRecord) *JournalRecordDeleteOne {
	jrdo.jrd.mutation.Where(ps...)
	return jrdo
}

// Exec executes the deletion query.
func (jrdo *JournalRecordDeleteOne) Exec(ctx context.Context) error {
	n, err := jrdo.jrd.Exec(ctx)
	switch {
	case err != nil:
		return err
	case n == 0:
		return &NotFoundError{journalrecord.Label}
	default:
		return nil
	}
}

// ExecX is like Exec, but panics if an error occurs.
func (jrdo *JournalRecordDeleteOne) ExecX(ctx context.Context) {
	if err := jrdo.Exec(ctx); err != nil {
		panic(err)
	}
}
