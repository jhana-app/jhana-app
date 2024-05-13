// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/content"
	"github.com/jhana-app/jhana-app/ent/contentepisode"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/property"
)

// ContentUpdate is the builder for updating Content entities.
type ContentUpdate struct {
	config
	hooks     []Hook
	mutation  *ContentMutation
	modifiers []func(*sql.UpdateBuilder)
}

// Where appends a list predicates to the ContentUpdate builder.
func (cu *ContentUpdate) Where(ps ...predicate.Content) *ContentUpdate {
	cu.mutation.Where(ps...)
	return cu
}

// SetType sets the "type" field.
func (cu *ContentUpdate) SetType(pt property.ContentType) *ContentUpdate {
	cu.mutation.SetType(pt)
	return cu
}

// SetNillableType sets the "type" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableType(pt *property.ContentType) *ContentUpdate {
	if pt != nil {
		cu.SetType(*pt)
	}
	return cu
}

// SetIconImage sets the "iconImage" field.
func (cu *ContentUpdate) SetIconImage(s string) *ContentUpdate {
	cu.mutation.SetIconImage(s)
	return cu
}

// SetNillableIconImage sets the "iconImage" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableIconImage(s *string) *ContentUpdate {
	if s != nil {
		cu.SetIconImage(*s)
	}
	return cu
}

// SetCoverImage sets the "coverImage" field.
func (cu *ContentUpdate) SetCoverImage(s string) *ContentUpdate {
	cu.mutation.SetCoverImage(s)
	return cu
}

// SetNillableCoverImage sets the "coverImage" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableCoverImage(s *string) *ContentUpdate {
	if s != nil {
		cu.SetCoverImage(*s)
	}
	return cu
}

// SetTitle sets the "title" field.
func (cu *ContentUpdate) SetTitle(s string) *ContentUpdate {
	cu.mutation.SetTitle(s)
	return cu
}

// SetNillableTitle sets the "title" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableTitle(s *string) *ContentUpdate {
	if s != nil {
		cu.SetTitle(*s)
	}
	return cu
}

// SetSubtitle sets the "subtitle" field.
func (cu *ContentUpdate) SetSubtitle(s string) *ContentUpdate {
	cu.mutation.SetSubtitle(s)
	return cu
}

// SetNillableSubtitle sets the "subtitle" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableSubtitle(s *string) *ContentUpdate {
	if s != nil {
		cu.SetSubtitle(*s)
	}
	return cu
}

// SetDescription sets the "description" field.
func (cu *ContentUpdate) SetDescription(s string) *ContentUpdate {
	cu.mutation.SetDescription(s)
	return cu
}

// SetNillableDescription sets the "description" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableDescription(s *string) *ContentUpdate {
	if s != nil {
		cu.SetDescription(*s)
	}
	return cu
}

// SetSource sets the "source" field.
func (cu *ContentUpdate) SetSource(s string) *ContentUpdate {
	cu.mutation.SetSource(s)
	return cu
}

// SetNillableSource sets the "source" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableSource(s *string) *ContentUpdate {
	if s != nil {
		cu.SetSource(*s)
	}
	return cu
}

// SetSourceURL sets the "sourceURL" field.
func (cu *ContentUpdate) SetSourceURL(s string) *ContentUpdate {
	cu.mutation.SetSourceURL(s)
	return cu
}

// SetNillableSourceURL sets the "sourceURL" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableSourceURL(s *string) *ContentUpdate {
	if s != nil {
		cu.SetSourceURL(*s)
	}
	return cu
}

// SetLicence sets the "licence" field.
func (cu *ContentUpdate) SetLicence(s string) *ContentUpdate {
	cu.mutation.SetLicence(s)
	return cu
}

// SetNillableLicence sets the "licence" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableLicence(s *string) *ContentUpdate {
	if s != nil {
		cu.SetLicence(*s)
	}
	return cu
}

// SetLicenceURL sets the "licenceURL" field.
func (cu *ContentUpdate) SetLicenceURL(s string) *ContentUpdate {
	cu.mutation.SetLicenceURL(s)
	return cu
}

// SetNillableLicenceURL sets the "licenceURL" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableLicenceURL(s *string) *ContentUpdate {
	if s != nil {
		cu.SetLicenceURL(*s)
	}
	return cu
}

// SetIsHidden sets the "isHidden" field.
func (cu *ContentUpdate) SetIsHidden(b bool) *ContentUpdate {
	cu.mutation.SetIsHidden(b)
	return cu
}

// SetNillableIsHidden sets the "isHidden" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableIsHidden(b *bool) *ContentUpdate {
	if b != nil {
		cu.SetIsHidden(*b)
	}
	return cu
}

// SetOrder sets the "order" field.
func (cu *ContentUpdate) SetOrder(i int) *ContentUpdate {
	cu.mutation.ResetOrder()
	cu.mutation.SetOrder(i)
	return cu
}

// SetNillableOrder sets the "order" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableOrder(i *int) *ContentUpdate {
	if i != nil {
		cu.SetOrder(*i)
	}
	return cu
}

// AddOrder adds i to the "order" field.
func (cu *ContentUpdate) AddOrder(i int) *ContentUpdate {
	cu.mutation.AddOrder(i)
	return cu
}

// SetEpisodesCount sets the "episodesCount" field.
func (cu *ContentUpdate) SetEpisodesCount(i int) *ContentUpdate {
	cu.mutation.ResetEpisodesCount()
	cu.mutation.SetEpisodesCount(i)
	return cu
}

// SetNillableEpisodesCount sets the "episodesCount" field if the given value is not nil.
func (cu *ContentUpdate) SetNillableEpisodesCount(i *int) *ContentUpdate {
	if i != nil {
		cu.SetEpisodesCount(*i)
	}
	return cu
}

// AddEpisodesCount adds i to the "episodesCount" field.
func (cu *ContentUpdate) AddEpisodesCount(i int) *ContentUpdate {
	cu.mutation.AddEpisodesCount(i)
	return cu
}

// AddEpisodeIDs adds the "episodes" edge to the ContentEpisode entity by IDs.
func (cu *ContentUpdate) AddEpisodeIDs(ids ...gqlid.ContentEpisodeID) *ContentUpdate {
	cu.mutation.AddEpisodeIDs(ids...)
	return cu
}

// AddEpisodes adds the "episodes" edges to the ContentEpisode entity.
func (cu *ContentUpdate) AddEpisodes(c ...*ContentEpisode) *ContentUpdate {
	ids := make([]gqlid.ContentEpisodeID, len(c))
	for i := range c {
		ids[i] = c[i].ID
	}
	return cu.AddEpisodeIDs(ids...)
}

// Mutation returns the ContentMutation object of the builder.
func (cu *ContentUpdate) Mutation() *ContentMutation {
	return cu.mutation
}

// ClearEpisodes clears all "episodes" edges to the ContentEpisode entity.
func (cu *ContentUpdate) ClearEpisodes() *ContentUpdate {
	cu.mutation.ClearEpisodes()
	return cu
}

// RemoveEpisodeIDs removes the "episodes" edge to ContentEpisode entities by IDs.
func (cu *ContentUpdate) RemoveEpisodeIDs(ids ...gqlid.ContentEpisodeID) *ContentUpdate {
	cu.mutation.RemoveEpisodeIDs(ids...)
	return cu
}

// RemoveEpisodes removes "episodes" edges to ContentEpisode entities.
func (cu *ContentUpdate) RemoveEpisodes(c ...*ContentEpisode) *ContentUpdate {
	ids := make([]gqlid.ContentEpisodeID, len(c))
	for i := range c {
		ids[i] = c[i].ID
	}
	return cu.RemoveEpisodeIDs(ids...)
}

// Save executes the query and returns the number of nodes affected by the update operation.
func (cu *ContentUpdate) Save(ctx context.Context) (int, error) {
	return withHooks(ctx, cu.sqlSave, cu.mutation, cu.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (cu *ContentUpdate) SaveX(ctx context.Context) int {
	affected, err := cu.Save(ctx)
	if err != nil {
		panic(err)
	}
	return affected
}

// Exec executes the query.
func (cu *ContentUpdate) Exec(ctx context.Context) error {
	_, err := cu.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (cu *ContentUpdate) ExecX(ctx context.Context) {
	if err := cu.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (cu *ContentUpdate) check() error {
	if v, ok := cu.mutation.GetType(); ok {
		if err := content.TypeValidator(v); err != nil {
			return &ValidationError{Name: "type", err: fmt.Errorf(`ent: validator failed for field "Content.type": %w`, err)}
		}
	}
	if v, ok := cu.mutation.IconImage(); ok {
		if err := content.IconImageValidator(v); err != nil {
			return &ValidationError{Name: "iconImage", err: fmt.Errorf(`ent: validator failed for field "Content.iconImage": %w`, err)}
		}
	}
	if v, ok := cu.mutation.CoverImage(); ok {
		if err := content.CoverImageValidator(v); err != nil {
			return &ValidationError{Name: "coverImage", err: fmt.Errorf(`ent: validator failed for field "Content.coverImage": %w`, err)}
		}
	}
	if v, ok := cu.mutation.Title(); ok {
		if err := content.TitleValidator(v); err != nil {
			return &ValidationError{Name: "title", err: fmt.Errorf(`ent: validator failed for field "Content.title": %w`, err)}
		}
	}
	if v, ok := cu.mutation.Subtitle(); ok {
		if err := content.SubtitleValidator(v); err != nil {
			return &ValidationError{Name: "subtitle", err: fmt.Errorf(`ent: validator failed for field "Content.subtitle": %w`, err)}
		}
	}
	if v, ok := cu.mutation.Description(); ok {
		if err := content.DescriptionValidator(v); err != nil {
			return &ValidationError{Name: "description", err: fmt.Errorf(`ent: validator failed for field "Content.description": %w`, err)}
		}
	}
	if v, ok := cu.mutation.Order(); ok {
		if err := content.OrderValidator(v); err != nil {
			return &ValidationError{Name: "order", err: fmt.Errorf(`ent: validator failed for field "Content.order": %w`, err)}
		}
	}
	if v, ok := cu.mutation.EpisodesCount(); ok {
		if err := content.EpisodesCountValidator(v); err != nil {
			return &ValidationError{Name: "episodesCount", err: fmt.Errorf(`ent: validator failed for field "Content.episodesCount": %w`, err)}
		}
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (cu *ContentUpdate) Modify(modifiers ...func(u *sql.UpdateBuilder)) *ContentUpdate {
	cu.modifiers = append(cu.modifiers, modifiers...)
	return cu
}

func (cu *ContentUpdate) sqlSave(ctx context.Context) (n int, err error) {
	if err := cu.check(); err != nil {
		return n, err
	}
	_spec := sqlgraph.NewUpdateSpec(content.Table, content.Columns, sqlgraph.NewFieldSpec(content.FieldID, field.TypeInt64))
	if ps := cu.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := cu.mutation.GetType(); ok {
		_spec.SetField(content.FieldType, field.TypeEnum, value)
	}
	if value, ok := cu.mutation.IconImage(); ok {
		_spec.SetField(content.FieldIconImage, field.TypeString, value)
	}
	if value, ok := cu.mutation.CoverImage(); ok {
		_spec.SetField(content.FieldCoverImage, field.TypeString, value)
	}
	if value, ok := cu.mutation.Title(); ok {
		_spec.SetField(content.FieldTitle, field.TypeString, value)
	}
	if value, ok := cu.mutation.Subtitle(); ok {
		_spec.SetField(content.FieldSubtitle, field.TypeString, value)
	}
	if value, ok := cu.mutation.Description(); ok {
		_spec.SetField(content.FieldDescription, field.TypeString, value)
	}
	if value, ok := cu.mutation.Source(); ok {
		_spec.SetField(content.FieldSource, field.TypeString, value)
	}
	if value, ok := cu.mutation.SourceURL(); ok {
		_spec.SetField(content.FieldSourceURL, field.TypeString, value)
	}
	if value, ok := cu.mutation.Licence(); ok {
		_spec.SetField(content.FieldLicence, field.TypeString, value)
	}
	if value, ok := cu.mutation.LicenceURL(); ok {
		_spec.SetField(content.FieldLicenceURL, field.TypeString, value)
	}
	if value, ok := cu.mutation.IsHidden(); ok {
		_spec.SetField(content.FieldIsHidden, field.TypeBool, value)
	}
	if value, ok := cu.mutation.Order(); ok {
		_spec.SetField(content.FieldOrder, field.TypeInt, value)
	}
	if value, ok := cu.mutation.AddedOrder(); ok {
		_spec.AddField(content.FieldOrder, field.TypeInt, value)
	}
	if value, ok := cu.mutation.EpisodesCount(); ok {
		_spec.SetField(content.FieldEpisodesCount, field.TypeInt, value)
	}
	if value, ok := cu.mutation.AddedEpisodesCount(); ok {
		_spec.AddField(content.FieldEpisodesCount, field.TypeInt, value)
	}
	if cu.mutation.EpisodesCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := cu.mutation.RemovedEpisodesIDs(); len(nodes) > 0 && !cu.mutation.EpisodesCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := cu.mutation.EpisodesIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	_spec.AddModifiers(cu.modifiers...)
	if n, err = sqlgraph.UpdateNodes(ctx, cu.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{content.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return 0, err
	}
	cu.mutation.done = true
	return n, nil
}

// ContentUpdateOne is the builder for updating a single Content entity.
type ContentUpdateOne struct {
	config
	fields    []string
	hooks     []Hook
	mutation  *ContentMutation
	modifiers []func(*sql.UpdateBuilder)
}

// SetType sets the "type" field.
func (cuo *ContentUpdateOne) SetType(pt property.ContentType) *ContentUpdateOne {
	cuo.mutation.SetType(pt)
	return cuo
}

// SetNillableType sets the "type" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableType(pt *property.ContentType) *ContentUpdateOne {
	if pt != nil {
		cuo.SetType(*pt)
	}
	return cuo
}

// SetIconImage sets the "iconImage" field.
func (cuo *ContentUpdateOne) SetIconImage(s string) *ContentUpdateOne {
	cuo.mutation.SetIconImage(s)
	return cuo
}

// SetNillableIconImage sets the "iconImage" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableIconImage(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetIconImage(*s)
	}
	return cuo
}

// SetCoverImage sets the "coverImage" field.
func (cuo *ContentUpdateOne) SetCoverImage(s string) *ContentUpdateOne {
	cuo.mutation.SetCoverImage(s)
	return cuo
}

// SetNillableCoverImage sets the "coverImage" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableCoverImage(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetCoverImage(*s)
	}
	return cuo
}

// SetTitle sets the "title" field.
func (cuo *ContentUpdateOne) SetTitle(s string) *ContentUpdateOne {
	cuo.mutation.SetTitle(s)
	return cuo
}

// SetNillableTitle sets the "title" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableTitle(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetTitle(*s)
	}
	return cuo
}

// SetSubtitle sets the "subtitle" field.
func (cuo *ContentUpdateOne) SetSubtitle(s string) *ContentUpdateOne {
	cuo.mutation.SetSubtitle(s)
	return cuo
}

// SetNillableSubtitle sets the "subtitle" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableSubtitle(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetSubtitle(*s)
	}
	return cuo
}

// SetDescription sets the "description" field.
func (cuo *ContentUpdateOne) SetDescription(s string) *ContentUpdateOne {
	cuo.mutation.SetDescription(s)
	return cuo
}

// SetNillableDescription sets the "description" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableDescription(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetDescription(*s)
	}
	return cuo
}

// SetSource sets the "source" field.
func (cuo *ContentUpdateOne) SetSource(s string) *ContentUpdateOne {
	cuo.mutation.SetSource(s)
	return cuo
}

// SetNillableSource sets the "source" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableSource(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetSource(*s)
	}
	return cuo
}

// SetSourceURL sets the "sourceURL" field.
func (cuo *ContentUpdateOne) SetSourceURL(s string) *ContentUpdateOne {
	cuo.mutation.SetSourceURL(s)
	return cuo
}

// SetNillableSourceURL sets the "sourceURL" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableSourceURL(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetSourceURL(*s)
	}
	return cuo
}

// SetLicence sets the "licence" field.
func (cuo *ContentUpdateOne) SetLicence(s string) *ContentUpdateOne {
	cuo.mutation.SetLicence(s)
	return cuo
}

// SetNillableLicence sets the "licence" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableLicence(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetLicence(*s)
	}
	return cuo
}

// SetLicenceURL sets the "licenceURL" field.
func (cuo *ContentUpdateOne) SetLicenceURL(s string) *ContentUpdateOne {
	cuo.mutation.SetLicenceURL(s)
	return cuo
}

// SetNillableLicenceURL sets the "licenceURL" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableLicenceURL(s *string) *ContentUpdateOne {
	if s != nil {
		cuo.SetLicenceURL(*s)
	}
	return cuo
}

// SetIsHidden sets the "isHidden" field.
func (cuo *ContentUpdateOne) SetIsHidden(b bool) *ContentUpdateOne {
	cuo.mutation.SetIsHidden(b)
	return cuo
}

// SetNillableIsHidden sets the "isHidden" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableIsHidden(b *bool) *ContentUpdateOne {
	if b != nil {
		cuo.SetIsHidden(*b)
	}
	return cuo
}

// SetOrder sets the "order" field.
func (cuo *ContentUpdateOne) SetOrder(i int) *ContentUpdateOne {
	cuo.mutation.ResetOrder()
	cuo.mutation.SetOrder(i)
	return cuo
}

// SetNillableOrder sets the "order" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableOrder(i *int) *ContentUpdateOne {
	if i != nil {
		cuo.SetOrder(*i)
	}
	return cuo
}

// AddOrder adds i to the "order" field.
func (cuo *ContentUpdateOne) AddOrder(i int) *ContentUpdateOne {
	cuo.mutation.AddOrder(i)
	return cuo
}

// SetEpisodesCount sets the "episodesCount" field.
func (cuo *ContentUpdateOne) SetEpisodesCount(i int) *ContentUpdateOne {
	cuo.mutation.ResetEpisodesCount()
	cuo.mutation.SetEpisodesCount(i)
	return cuo
}

// SetNillableEpisodesCount sets the "episodesCount" field if the given value is not nil.
func (cuo *ContentUpdateOne) SetNillableEpisodesCount(i *int) *ContentUpdateOne {
	if i != nil {
		cuo.SetEpisodesCount(*i)
	}
	return cuo
}

// AddEpisodesCount adds i to the "episodesCount" field.
func (cuo *ContentUpdateOne) AddEpisodesCount(i int) *ContentUpdateOne {
	cuo.mutation.AddEpisodesCount(i)
	return cuo
}

// AddEpisodeIDs adds the "episodes" edge to the ContentEpisode entity by IDs.
func (cuo *ContentUpdateOne) AddEpisodeIDs(ids ...gqlid.ContentEpisodeID) *ContentUpdateOne {
	cuo.mutation.AddEpisodeIDs(ids...)
	return cuo
}

// AddEpisodes adds the "episodes" edges to the ContentEpisode entity.
func (cuo *ContentUpdateOne) AddEpisodes(c ...*ContentEpisode) *ContentUpdateOne {
	ids := make([]gqlid.ContentEpisodeID, len(c))
	for i := range c {
		ids[i] = c[i].ID
	}
	return cuo.AddEpisodeIDs(ids...)
}

// Mutation returns the ContentMutation object of the builder.
func (cuo *ContentUpdateOne) Mutation() *ContentMutation {
	return cuo.mutation
}

// ClearEpisodes clears all "episodes" edges to the ContentEpisode entity.
func (cuo *ContentUpdateOne) ClearEpisodes() *ContentUpdateOne {
	cuo.mutation.ClearEpisodes()
	return cuo
}

// RemoveEpisodeIDs removes the "episodes" edge to ContentEpisode entities by IDs.
func (cuo *ContentUpdateOne) RemoveEpisodeIDs(ids ...gqlid.ContentEpisodeID) *ContentUpdateOne {
	cuo.mutation.RemoveEpisodeIDs(ids...)
	return cuo
}

// RemoveEpisodes removes "episodes" edges to ContentEpisode entities.
func (cuo *ContentUpdateOne) RemoveEpisodes(c ...*ContentEpisode) *ContentUpdateOne {
	ids := make([]gqlid.ContentEpisodeID, len(c))
	for i := range c {
		ids[i] = c[i].ID
	}
	return cuo.RemoveEpisodeIDs(ids...)
}

// Where appends a list predicates to the ContentUpdate builder.
func (cuo *ContentUpdateOne) Where(ps ...predicate.Content) *ContentUpdateOne {
	cuo.mutation.Where(ps...)
	return cuo
}

// Select allows selecting one or more fields (columns) of the returned entity.
// The default is selecting all fields defined in the entity schema.
func (cuo *ContentUpdateOne) Select(field string, fields ...string) *ContentUpdateOne {
	cuo.fields = append([]string{field}, fields...)
	return cuo
}

// Save executes the query and returns the updated Content entity.
func (cuo *ContentUpdateOne) Save(ctx context.Context) (*Content, error) {
	return withHooks(ctx, cuo.sqlSave, cuo.mutation, cuo.hooks)
}

// SaveX is like Save, but panics if an error occurs.
func (cuo *ContentUpdateOne) SaveX(ctx context.Context) *Content {
	node, err := cuo.Save(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// Exec executes the query on the entity.
func (cuo *ContentUpdateOne) Exec(ctx context.Context) error {
	_, err := cuo.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (cuo *ContentUpdateOne) ExecX(ctx context.Context) {
	if err := cuo.Exec(ctx); err != nil {
		panic(err)
	}
}

// check runs all checks and user-defined validators on the builder.
func (cuo *ContentUpdateOne) check() error {
	if v, ok := cuo.mutation.GetType(); ok {
		if err := content.TypeValidator(v); err != nil {
			return &ValidationError{Name: "type", err: fmt.Errorf(`ent: validator failed for field "Content.type": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.IconImage(); ok {
		if err := content.IconImageValidator(v); err != nil {
			return &ValidationError{Name: "iconImage", err: fmt.Errorf(`ent: validator failed for field "Content.iconImage": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.CoverImage(); ok {
		if err := content.CoverImageValidator(v); err != nil {
			return &ValidationError{Name: "coverImage", err: fmt.Errorf(`ent: validator failed for field "Content.coverImage": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.Title(); ok {
		if err := content.TitleValidator(v); err != nil {
			return &ValidationError{Name: "title", err: fmt.Errorf(`ent: validator failed for field "Content.title": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.Subtitle(); ok {
		if err := content.SubtitleValidator(v); err != nil {
			return &ValidationError{Name: "subtitle", err: fmt.Errorf(`ent: validator failed for field "Content.subtitle": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.Description(); ok {
		if err := content.DescriptionValidator(v); err != nil {
			return &ValidationError{Name: "description", err: fmt.Errorf(`ent: validator failed for field "Content.description": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.Order(); ok {
		if err := content.OrderValidator(v); err != nil {
			return &ValidationError{Name: "order", err: fmt.Errorf(`ent: validator failed for field "Content.order": %w`, err)}
		}
	}
	if v, ok := cuo.mutation.EpisodesCount(); ok {
		if err := content.EpisodesCountValidator(v); err != nil {
			return &ValidationError{Name: "episodesCount", err: fmt.Errorf(`ent: validator failed for field "Content.episodesCount": %w`, err)}
		}
	}
	return nil
}

// Modify adds a statement modifier for attaching custom logic to the UPDATE statement.
func (cuo *ContentUpdateOne) Modify(modifiers ...func(u *sql.UpdateBuilder)) *ContentUpdateOne {
	cuo.modifiers = append(cuo.modifiers, modifiers...)
	return cuo
}

func (cuo *ContentUpdateOne) sqlSave(ctx context.Context) (_node *Content, err error) {
	if err := cuo.check(); err != nil {
		return _node, err
	}
	_spec := sqlgraph.NewUpdateSpec(content.Table, content.Columns, sqlgraph.NewFieldSpec(content.FieldID, field.TypeInt64))
	id, ok := cuo.mutation.ID()
	if !ok {
		return nil, &ValidationError{Name: "id", err: errors.New(`ent: missing "Content.id" for update`)}
	}
	_spec.Node.ID.Value = id
	if fields := cuo.fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, content.FieldID)
		for _, f := range fields {
			if !content.ValidColumn(f) {
				return nil, &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
			}
			if f != content.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, f)
			}
		}
	}
	if ps := cuo.mutation.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if value, ok := cuo.mutation.GetType(); ok {
		_spec.SetField(content.FieldType, field.TypeEnum, value)
	}
	if value, ok := cuo.mutation.IconImage(); ok {
		_spec.SetField(content.FieldIconImage, field.TypeString, value)
	}
	if value, ok := cuo.mutation.CoverImage(); ok {
		_spec.SetField(content.FieldCoverImage, field.TypeString, value)
	}
	if value, ok := cuo.mutation.Title(); ok {
		_spec.SetField(content.FieldTitle, field.TypeString, value)
	}
	if value, ok := cuo.mutation.Subtitle(); ok {
		_spec.SetField(content.FieldSubtitle, field.TypeString, value)
	}
	if value, ok := cuo.mutation.Description(); ok {
		_spec.SetField(content.FieldDescription, field.TypeString, value)
	}
	if value, ok := cuo.mutation.Source(); ok {
		_spec.SetField(content.FieldSource, field.TypeString, value)
	}
	if value, ok := cuo.mutation.SourceURL(); ok {
		_spec.SetField(content.FieldSourceURL, field.TypeString, value)
	}
	if value, ok := cuo.mutation.Licence(); ok {
		_spec.SetField(content.FieldLicence, field.TypeString, value)
	}
	if value, ok := cuo.mutation.LicenceURL(); ok {
		_spec.SetField(content.FieldLicenceURL, field.TypeString, value)
	}
	if value, ok := cuo.mutation.IsHidden(); ok {
		_spec.SetField(content.FieldIsHidden, field.TypeBool, value)
	}
	if value, ok := cuo.mutation.Order(); ok {
		_spec.SetField(content.FieldOrder, field.TypeInt, value)
	}
	if value, ok := cuo.mutation.AddedOrder(); ok {
		_spec.AddField(content.FieldOrder, field.TypeInt, value)
	}
	if value, ok := cuo.mutation.EpisodesCount(); ok {
		_spec.SetField(content.FieldEpisodesCount, field.TypeInt, value)
	}
	if value, ok := cuo.mutation.AddedEpisodesCount(); ok {
		_spec.AddField(content.FieldEpisodesCount, field.TypeInt, value)
	}
	if cuo.mutation.EpisodesCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := cuo.mutation.RemovedEpisodesIDs(); len(nodes) > 0 && !cuo.mutation.EpisodesCleared() {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Clear = append(_spec.Edges.Clear, edge)
	}
	if nodes := cuo.mutation.EpisodesIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: true,
			Table:   content.EpisodesTable,
			Columns: []string{content.EpisodesColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(contentepisode.FieldID, field.TypeInt64),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges.Add = append(_spec.Edges.Add, edge)
	}
	_spec.AddModifiers(cuo.modifiers...)
	_node = &Content{config: cuo.config}
	_spec.Assign = _node.assignValues
	_spec.ScanValues = _node.scanValues
	if err = sqlgraph.UpdateNode(ctx, cuo.driver, _spec); err != nil {
		if _, ok := err.(*sqlgraph.NotFoundError); ok {
			err = &NotFoundError{content.Label}
		} else if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	cuo.mutation.done = true
	return _node, nil
}