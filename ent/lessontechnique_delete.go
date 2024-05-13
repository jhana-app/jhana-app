// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/lessontechnique"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// LessonTechniqueDelete is the builder for deleting a LessonTechnique entity.
type LessonTechniqueDelete struct {
	config
	hooks    []Hook
	mutation *LessonTechniqueMutation
}

// Where appends a list predicates to the LessonTechniqueDelete builder.
func (ltd *LessonTechniqueDelete) Where(ps ...predicate.LessonTechnique) *LessonTechniqueDelete {
	ltd.mutation.Where(ps...)
	return ltd
}

// Exec executes the deletion query and returns how many vertices were deleted.
func (ltd *LessonTechniqueDelete) Exec(ctx context.Context) (int, error) {
	return withHooks(ctx, ltd.sqlExec, ltd.mutation, ltd.hooks)
}

// ExecX is like Exec, but panics if an error occurs.
func (ltd *LessonTechniqueDelete) ExecX(ctx context.Context) int {
	n, err := ltd.Exec(ctx)
	if err != nil {
		panic(err)
	}
	return n
}

func (ltd *LessonTechniqueDelete) sqlExec(ctx context.Context) (int, error) {
	_spec := sqlgraph.NewDeleteSpec(lessontechnique.Table, nil)
	if ps := ltd.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	affected, err := sqlgraph.DeleteNodes(ctx, ltd.driver, _spec)
	if err != nil && sqlgraph.IsConstraintError(err) {
		err = &ConstraintError{msg: err.Error(), wrap: err}
	}
	ltd.mutation.done = true
	return affected, err
}

// LessonTechniqueDeleteOne is the builder for deleting a single LessonTechnique entity.
type LessonTechniqueDeleteOne struct {
	ltd *LessonTechniqueDelete
}

// Where appends a list predicates to the LessonTechniqueDelete builder.
func (ltdo *LessonTechniqueDeleteOne) Where(ps ...predicate.LessonTechnique) *LessonTechniqueDeleteOne {
	ltdo.ltd.mutation.Where(ps...)
	return ltdo
}

// Exec executes the deletion query.
func (ltdo *LessonTechniqueDeleteOne) Exec(ctx context.Context) error {
	n, err := ltdo.ltd.Exec(ctx)
	switch {
	case err != nil:
		return err
	case n == 0:
		return &NotFoundError{lessontechnique.Label}
	default:
		return nil
	}
}

// ExecX is like Exec, but panics if an error occurs.
func (ltdo *LessonTechniqueDeleteOne) ExecX(ctx context.Context) {
	if err := ltdo.Exec(ctx); err != nil {
		panic(err)
	}
}
