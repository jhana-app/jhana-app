// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/unittechnique"
)

// UnitTechniqueDelete is the builder for deleting a UnitTechnique entity.
type UnitTechniqueDelete struct {
	config
	hooks    []Hook
	mutation *UnitTechniqueMutation
}

// Where appends a list predicates to the UnitTechniqueDelete builder.
func (utd *UnitTechniqueDelete) Where(ps ...predicate.UnitTechnique) *UnitTechniqueDelete {
	utd.mutation.Where(ps...)
	return utd
}

// Exec executes the deletion query and returns how many vertices were deleted.
func (utd *UnitTechniqueDelete) Exec(ctx context.Context) (int, error) {
	return withHooks(ctx, utd.sqlExec, utd.mutation, utd.hooks)
}

// ExecX is like Exec, but panics if an error occurs.
func (utd *UnitTechniqueDelete) ExecX(ctx context.Context) int {
	n, err := utd.Exec(ctx)
	if err != nil {
		panic(err)
	}
	return n
}

func (utd *UnitTechniqueDelete) sqlExec(ctx context.Context) (int, error) {
	_spec := sqlgraph.NewDeleteSpec(unittechnique.Table, nil)
	if ps := utd.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	affected, err := sqlgraph.DeleteNodes(ctx, utd.driver, _spec)
	if err != nil && sqlgraph.IsConstraintError(err) {
		err = &ConstraintError{msg: err.Error(), wrap: err}
	}
	utd.mutation.done = true
	return affected, err
}

// UnitTechniqueDeleteOne is the builder for deleting a single UnitTechnique entity.
type UnitTechniqueDeleteOne struct {
	utd *UnitTechniqueDelete
}

// Where appends a list predicates to the UnitTechniqueDelete builder.
func (utdo *UnitTechniqueDeleteOne) Where(ps ...predicate.UnitTechnique) *UnitTechniqueDeleteOne {
	utdo.utd.mutation.Where(ps...)
	return utdo
}

// Exec executes the deletion query.
func (utdo *UnitTechniqueDeleteOne) Exec(ctx context.Context) error {
	n, err := utdo.utd.Exec(ctx)
	switch {
	case err != nil:
		return err
	case n == 0:
		return &NotFoundError{unittechnique.Label}
	default:
		return nil
	}
}

// ExecX is like Exec, but panics if an error occurs.
func (utdo *UnitTechniqueDeleteOne) ExecX(ctx context.Context) {
	if err := utdo.Exec(ctx); err != nil {
		panic(err)
	}
}
