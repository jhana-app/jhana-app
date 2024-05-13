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
	"github.com/jhana-app/jhana-app/ent/lessonaudio"
)

// LessonAudioCreate is the builder for creating a LessonAudio entity.
type LessonAudioCreate struct {
	config
	mutation *LessonAudioMutation
	hooks    []Hook
}

// SetLessonID sets the "lesson_id" field.
func (lac *LessonAudioCreate) SetLessonID(gi gqlid.LessonID) *LessonAudioCreate {
	lac.mutation.SetLessonID(gi)
	return lac
}

// SetAudioURL sets the "audioURL" field.
func (lac *LessonAudioCreate) SetAudioURL(s string) *LessonAudioCreate {
	lac.mutation.SetAudioURL(s)
	return lac
}

// SetDuration sets the "duration" field.
func (lac *LessonAudioCreate) SetDuration(i int) *LessonAudioCreate {
	lac.mutation.SetDuration(i)
	return lac
}

// SetID sets the "id" field.
func (lac *LessonAudioCreate) SetID(gai gqlid.LessonAudioID) *LessonAudioCreate {
	lac.mutation.SetID(gai)
	return lac
}

// SetLesson sets the "lesson" edge to the Lesson entity.
func (lac *LessonAudioCreate) SetLesson(l *Lesson) *LessonAudioCreate {
	return lac.SetLessonID(l.ID)
}

// Mutation returns the LessonAudioMutation object of the builder.
func (lac *LessonAudioCreate) Mutation() *LessonAudioMutation {
	return lac.mutation
}

// Save creates the LessonAudio in the database.
func (lac *LessonAudioCreate) Save(ctx context.Context) (*LessonAudio, error) {
	return withHooks(ctx, lac.sqlSave, lac.mutation, lac.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (lac *LessonAudioCreate) SaveX(ctx context.Context) *LessonAudio {
	v, err := lac.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (lac *LessonAudioCreate) Exec(ctx context.Context) error {
	_, err := lac.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (lac *LessonAudioCreate) ExecX(ctx context.Context) {
	if err := lac.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (lac *LessonAudioCreate) check() error {
	if _, ok := lac.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson_id", err: errors.New(`ent: missing required field "LessonAudio.lesson_id"`)}
	}
	if _, ok := lac.mutation.AudioURL(); !ok {
		return &ValidationError{Name: "audioURL", err: errors.New(`ent: missing required field "LessonAudio.audioURL"`)}
	}
	if _, ok := lac.mutation.Duration(); !ok {
		return &ValidationError{Name: "duration", err: errors.New(`ent: missing required field "LessonAudio.duration"`)}
	}
	if v, ok := lac.mutation.Duration(); ok {
		if err := lessonaudio.DurationValidator(v); err != nil {
			return &ValidationError{Name: "duration", err: fmt.Errorf(`ent: validator failed for field "LessonAudio.duration": %w`, err)}
		}
	}
	if _, ok := lac.mutation.LessonID(); !ok {
		return &ValidationError{Name: "lesson", err: errors.New(`ent: missing required edge "LessonAudio.lesson"`)}
	}
	return nil
}

func (lac *LessonAudioCreate) sqlSave(ctx context.Context) (*LessonAudio, error) {
	if err := lac.check(); err != nil {
		return nil, err
	}
	_node, _spec := lac.createSpec()
	if err := sqlgraph.CreateNode(ctx, lac.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	if _spec.ID.Value != nil {
		if id, ok := _spec.ID.Value.(*gqlid.LessonAudioID); ok {
			_node.ID = *id
		} else if err := _node.ID.Scan(_spec.ID.Value); err != nil {
			return nil, err
		}
	}
	lac.mutation.id = &_node.ID
	lac.mutation.done = true
	return _node, nil
}

func (lac *LessonAudioCreate) createSpec() (*LessonAudio, *sqlgraph.CreateSpec) {
	var (
		_node = &LessonAudio{config: lac.config}
		_spec = sqlgraph.NewCreateSpec(lessonaudio.Table, sqlgraph.NewFieldSpec(lessonaudio.FieldID, field.TypeInt64))
	)
	if id, ok := lac.mutation.ID(); ok {
		_node.ID = id
		_spec.ID.Value = &id
	}
	if value, ok := lac.mutation.AudioURL(); ok {
		_spec.SetField(lessonaudio.FieldAudioURL, field.TypeString, value)
		_node.AudioURL = value
	}
	if value, ok := lac.mutation.Duration(); ok {
		_spec.SetField(lessonaudio.FieldDuration, field.TypeInt, value)
		_node.Duration = value
	}
	if nodes := lac.mutation.LessonIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: false,
			Table:   lessonaudio.LessonTable,
			Columns: []string{lessonaudio.LessonColumn},
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

// LessonAudioCreateBulk is the builder for creating many LessonAudio entities in bulk.
type LessonAudioCreateBulk struct {
	config
	err      error
	builders []*LessonAudioCreate
}

// Save creates the LessonAudio entities in the database.
func (lacb *LessonAudioCreateBulk) Save(ctx context.Context) ([]*LessonAudio, error) {
	if lacb.err != nil {
		return nil, lacb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(lacb.builders))
	nodes := make([]*LessonAudio, len(lacb.builders))
	mutators := make([]Mutator, len(lacb.builders))
	for i := range lacb.builders {
		func(i int, root context.Context) {
			builder := lacb.builders[i]
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*LessonAudioMutation)
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
					_, err = mutators[i+1].Mutate(root, lacb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, lacb.driver, spec); err != nil {
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
		if _, err := mutators[0].Mutate(ctx, lacb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (lacb *LessonAudioCreateBulk) SaveX(ctx context.Context) []*LessonAudio {
	v, err := lacb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (lacb *LessonAudioCreateBulk) Exec(ctx context.Context) error {
	_, err := lacb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (lacb *LessonAudioCreateBulk) ExecX(ctx context.Context) {
	if err := lacb.Exec(ctx); err != nil {
		panic(err)
	}
}