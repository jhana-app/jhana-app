// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"fmt"
	"math"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/lessonaudio"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// LessonAudioQuery is the builder for querying LessonAudio entities.
type LessonAudioQuery struct {
	config
	ctx        *QueryContext
	order      []lessonaudio.OrderOption
	inters     []Interceptor
	predicates []predicate.LessonAudio
	withLesson *LessonQuery
	loadTotal  []func(context.Context, []*LessonAudio) error
	modifiers  []func(*sql.Selector)
	// intermediate query (i.e. traversal path).
	sql  *sql.Selector
	path func(context.Context) (*sql.Selector, error)
}

// Where adds a new predicate for the LessonAudioQuery builder.
func (laq *LessonAudioQuery) Where(ps ...predicate.LessonAudio) *LessonAudioQuery {
	laq.predicates = append(laq.predicates, ps...)
	return laq
}

// Limit the number of records to be returned by this query.
func (laq *LessonAudioQuery) Limit(limit int) *LessonAudioQuery {
	laq.ctx.Limit = &limit
	return laq
}

// Offset to start from.
func (laq *LessonAudioQuery) Offset(offset int) *LessonAudioQuery {
	laq.ctx.Offset = &offset
	return laq
}

// Unique configures the query builder to filter duplicate records on query.
// By default, unique is set to true, and can be disabled using this method.
func (laq *LessonAudioQuery) Unique(unique bool) *LessonAudioQuery {
	laq.ctx.Unique = &unique
	return laq
}

// Order specifies how the records should be ordered.
func (laq *LessonAudioQuery) Order(o ...lessonaudio.OrderOption) *LessonAudioQuery {
	laq.order = append(laq.order, o...)
	return laq
}

// QueryLesson chains the current query on the "lesson" edge.
func (laq *LessonAudioQuery) QueryLesson() *LessonQuery {
	query := (&LessonClient{config: laq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := laq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := laq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(lessonaudio.Table, lessonaudio.FieldID, selector),
			sqlgraph.To(lesson.Table, lesson.FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, lessonaudio.LessonTable, lessonaudio.LessonColumn),
		)
		fromU = sqlgraph.SetNeighbors(laq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// First returns the first LessonAudio entity from the query.
// Returns a *NotFoundError when no LessonAudio was found.
func (laq *LessonAudioQuery) First(ctx context.Context) (*LessonAudio, error) {
	nodes, err := laq.Limit(1).All(setContextOp(ctx, laq.ctx, "First"))
	if err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nil, &NotFoundError{lessonaudio.Label}
	}
	return nodes[0], nil
}

// FirstX is like First, but panics if an error occurs.
func (laq *LessonAudioQuery) FirstX(ctx context.Context) *LessonAudio {
	node, err := laq.First(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return node
}

// FirstID returns the first LessonAudio ID from the query.
// Returns a *NotFoundError when no LessonAudio ID was found.
func (laq *LessonAudioQuery) FirstID(ctx context.Context) (id gqlid.LessonAudioID, err error) {
	var ids []gqlid.LessonAudioID
	if ids, err = laq.Limit(1).IDs(setContextOp(ctx, laq.ctx, "FirstID")); err != nil {
		return
	}
	if len(ids) == 0 {
		err = &NotFoundError{lessonaudio.Label}
		return
	}
	return ids[0], nil
}

// FirstIDX is like FirstID, but panics if an error occurs.
func (laq *LessonAudioQuery) FirstIDX(ctx context.Context) gqlid.LessonAudioID {
	id, err := laq.FirstID(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return id
}

// Only returns a single LessonAudio entity found by the query, ensuring it only returns one.
// Returns a *NotSingularError when more than one LessonAudio entity is found.
// Returns a *NotFoundError when no LessonAudio entities are found.
func (laq *LessonAudioQuery) Only(ctx context.Context) (*LessonAudio, error) {
	nodes, err := laq.Limit(2).All(setContextOp(ctx, laq.ctx, "Only"))
	if err != nil {
		return nil, err
	}
	switch len(nodes) {
	case 1:
		return nodes[0], nil
	case 0:
		return nil, &NotFoundError{lessonaudio.Label}
	default:
		return nil, &NotSingularError{lessonaudio.Label}
	}
}

// OnlyX is like Only, but panics if an error occurs.
func (laq *LessonAudioQuery) OnlyX(ctx context.Context) *LessonAudio {
	node, err := laq.Only(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// OnlyID is like Only, but returns the only LessonAudio ID in the query.
// Returns a *NotSingularError when more than one LessonAudio ID is found.
// Returns a *NotFoundError when no entities are found.
func (laq *LessonAudioQuery) OnlyID(ctx context.Context) (id gqlid.LessonAudioID, err error) {
	var ids []gqlid.LessonAudioID
	if ids, err = laq.Limit(2).IDs(setContextOp(ctx, laq.ctx, "OnlyID")); err != nil {
		return
	}
	switch len(ids) {
	case 1:
		id = ids[0]
	case 0:
		err = &NotFoundError{lessonaudio.Label}
	default:
		err = &NotSingularError{lessonaudio.Label}
	}
	return
}

// OnlyIDX is like OnlyID, but panics if an error occurs.
func (laq *LessonAudioQuery) OnlyIDX(ctx context.Context) gqlid.LessonAudioID {
	id, err := laq.OnlyID(ctx)
	if err != nil {
		panic(err)
	}
	return id
}

// All executes the query and returns a list of LessonAudios.
func (laq *LessonAudioQuery) All(ctx context.Context) ([]*LessonAudio, error) {
	ctx = setContextOp(ctx, laq.ctx, "All")
	if err := laq.prepareQuery(ctx); err != nil {
		return nil, err
	}
	qr := querierAll[[]*LessonAudio, *LessonAudioQuery]()
	return withInterceptors[[]*LessonAudio](ctx, laq, qr, laq.inters)
}

// AllX is like All, but panics if an error occurs.
func (laq *LessonAudioQuery) AllX(ctx context.Context) []*LessonAudio {
	nodes, err := laq.All(ctx)
	if err != nil {
		panic(err)
	}
	return nodes
}

// IDs executes the query and returns a list of LessonAudio IDs.
func (laq *LessonAudioQuery) IDs(ctx context.Context) (ids []gqlid.LessonAudioID, err error) {
	if laq.ctx.Unique == nil && laq.path != nil {
		laq.Unique(true)
	}
	ctx = setContextOp(ctx, laq.ctx, "IDs")
	if err = laq.Select(lessonaudio.FieldID).Scan(ctx, &ids); err != nil {
		return nil, err
	}
	return ids, nil
}

// IDsX is like IDs, but panics if an error occurs.
func (laq *LessonAudioQuery) IDsX(ctx context.Context) []gqlid.LessonAudioID {
	ids, err := laq.IDs(ctx)
	if err != nil {
		panic(err)
	}
	return ids
}

// Count returns the count of the given query.
func (laq *LessonAudioQuery) Count(ctx context.Context) (int, error) {
	ctx = setContextOp(ctx, laq.ctx, "Count")
	if err := laq.prepareQuery(ctx); err != nil {
		return 0, err
	}
	return withInterceptors[int](ctx, laq, querierCount[*LessonAudioQuery](), laq.inters)
}

// CountX is like Count, but panics if an error occurs.
func (laq *LessonAudioQuery) CountX(ctx context.Context) int {
	count, err := laq.Count(ctx)
	if err != nil {
		panic(err)
	}
	return count
}

// Exist returns true if the query has elements in the graph.
func (laq *LessonAudioQuery) Exist(ctx context.Context) (bool, error) {
	ctx = setContextOp(ctx, laq.ctx, "Exist")
	switch _, err := laq.FirstID(ctx); {
	case IsNotFound(err):
		return false, nil
	case err != nil:
		return false, fmt.Errorf("ent: check existence: %w", err)
	default:
		return true, nil
	}
}

// ExistX is like Exist, but panics if an error occurs.
func (laq *LessonAudioQuery) ExistX(ctx context.Context) bool {
	exist, err := laq.Exist(ctx)
	if err != nil {
		panic(err)
	}
	return exist
}

// Clone returns a duplicate of the LessonAudioQuery builder, including all associated steps. It can be
// used to prepare common query builders and use them differently after the clone is made.
func (laq *LessonAudioQuery) Clone() *LessonAudioQuery {
	if laq == nil {
		return nil
	}
	return &LessonAudioQuery{
		config:     laq.config,
		ctx:        laq.ctx.Clone(),
		order:      append([]lessonaudio.OrderOption{}, laq.order...),
		inters:     append([]Interceptor{}, laq.inters...),
		predicates: append([]predicate.LessonAudio{}, laq.predicates...),
		withLesson: laq.withLesson.Clone(),
		// clone intermediate query.
		sql:  laq.sql.Clone(),
		path: laq.path,
	}
}

// WithLesson tells the query-builder to eager-load the nodes that are connected to
// the "lesson" edge. The optional arguments are used to configure the query builder of the edge.
func (laq *LessonAudioQuery) WithLesson(opts ...func(*LessonQuery)) *LessonAudioQuery {
	query := (&LessonClient{config: laq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	laq.withLesson = query
	return laq
}

// GroupBy is used to group vertices by one or more fields/columns.
// It is often used with aggregate functions, like: count, max, mean, min, sum.
//
// Example:
//
//	var v []struct {
//		LessonID gqlid.LessonID `json:"lesson_id,omitempty"`
//		Count int `json:"count,omitempty"`
//	}
//
//	client.LessonAudio.Query().
//		GroupBy(lessonaudio.FieldLessonID).
//		Aggregate(ent.Count()).
//		Scan(ctx, &v)
func (laq *LessonAudioQuery) GroupBy(field string, fields ...string) *LessonAudioGroupBy {
	laq.ctx.Fields = append([]string{field}, fields...)
	grbuild := &LessonAudioGroupBy{build: laq}
	grbuild.flds = &laq.ctx.Fields
	grbuild.label = lessonaudio.Label
	grbuild.scan = grbuild.Scan
	return grbuild
}

// Select allows the selection one or more fields/columns for the given query,
// instead of selecting all fields in the entity.
//
// Example:
//
//	var v []struct {
//		LessonID gqlid.LessonID `json:"lesson_id,omitempty"`
//	}
//
//	client.LessonAudio.Query().
//		Select(lessonaudio.FieldLessonID).
//		Scan(ctx, &v)
func (laq *LessonAudioQuery) Select(fields ...string) *LessonAudioSelect {
	laq.ctx.Fields = append(laq.ctx.Fields, fields...)
	sbuild := &LessonAudioSelect{LessonAudioQuery: laq}
	sbuild.label = lessonaudio.Label
	sbuild.flds, sbuild.scan = &laq.ctx.Fields, sbuild.Scan
	return sbuild
}

// Aggregate returns a LessonAudioSelect configured with the given aggregations.
func (laq *LessonAudioQuery) Aggregate(fns ...AggregateFunc) *LessonAudioSelect {
	return laq.Select().Aggregate(fns...)
}

func (laq *LessonAudioQuery) prepareQuery(ctx context.Context) error {
	for _, inter := range laq.inters {
		if inter == nil {
			return fmt.Errorf("ent: uninitialized interceptor (forgotten import ent/runtime?)")
		}
		if trv, ok := inter.(Traverser); ok {
			if err := trv.Traverse(ctx, laq); err != nil {
				return err
			}
		}
	}
	for _, f := range laq.ctx.Fields {
		if !lessonaudio.ValidColumn(f) {
			return &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
		}
	}
	if laq.path != nil {
		prev, err := laq.path(ctx)
		if err != nil {
			return err
		}
		laq.sql = prev
	}
	return nil
}

func (laq *LessonAudioQuery) sqlAll(ctx context.Context, hooks ...queryHook) ([]*LessonAudio, error) {
	var (
		nodes       = []*LessonAudio{}
		_spec       = laq.querySpec()
		loadedTypes = [1]bool{
			laq.withLesson != nil,
		}
	)
	_spec.ScanValues = func(columns []string) ([]any, error) {
		return (*LessonAudio).scanValues(nil, columns)
	}
	_spec.Assign = func(columns []string, values []any) error {
		node := &LessonAudio{config: laq.config}
		nodes = append(nodes, node)
		node.Edges.loadedTypes = loadedTypes
		return node.assignValues(columns, values)
	}
	if len(laq.modifiers) > 0 {
		_spec.Modifiers = laq.modifiers
	}
	for i := range hooks {
		hooks[i](ctx, _spec)
	}
	if err := sqlgraph.QueryNodes(ctx, laq.driver, _spec); err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nodes, nil
	}
	if query := laq.withLesson; query != nil {
		if err := laq.loadLesson(ctx, query, nodes, nil,
			func(n *LessonAudio, e *Lesson) { n.Edges.Lesson = e }); err != nil {
			return nil, err
		}
	}
	for i := range laq.loadTotal {
		if err := laq.loadTotal[i](ctx, nodes); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

func (laq *LessonAudioQuery) loadLesson(ctx context.Context, query *LessonQuery, nodes []*LessonAudio, init func(*LessonAudio), assign func(*LessonAudio, *Lesson)) error {
	ids := make([]gqlid.LessonID, 0, len(nodes))
	nodeids := make(map[gqlid.LessonID][]*LessonAudio)
	for i := range nodes {
		fk := nodes[i].LessonID
		if _, ok := nodeids[fk]; !ok {
			ids = append(ids, fk)
		}
		nodeids[fk] = append(nodeids[fk], nodes[i])
	}
	if len(ids) == 0 {
		return nil
	}
	query.Where(lesson.IDIn(ids...))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		nodes, ok := nodeids[n.ID]
		if !ok {
			return fmt.Errorf(`unexpected foreign-key "lesson_id" returned %v`, n.ID)
		}
		for i := range nodes {
			assign(nodes[i], n)
		}
	}
	return nil
}

func (laq *LessonAudioQuery) sqlCount(ctx context.Context) (int, error) {
	_spec := laq.querySpec()
	if len(laq.modifiers) > 0 {
		_spec.Modifiers = laq.modifiers
	}
	_spec.Node.Columns = laq.ctx.Fields
	if len(laq.ctx.Fields) > 0 {
		_spec.Unique = laq.ctx.Unique != nil && *laq.ctx.Unique
	}
	return sqlgraph.CountNodes(ctx, laq.driver, _spec)
}

func (laq *LessonAudioQuery) querySpec() *sqlgraph.QuerySpec {
	_spec := sqlgraph.NewQuerySpec(lessonaudio.Table, lessonaudio.Columns, sqlgraph.NewFieldSpec(lessonaudio.FieldID, field.TypeInt64))
	_spec.From = laq.sql
	if unique := laq.ctx.Unique; unique != nil {
		_spec.Unique = *unique
	} else if laq.path != nil {
		_spec.Unique = true
	}
	if fields := laq.ctx.Fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, lessonaudio.FieldID)
		for i := range fields {
			if fields[i] != lessonaudio.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, fields[i])
			}
		}
		if laq.withLesson != nil {
			_spec.Node.AddColumnOnce(lessonaudio.FieldLessonID)
		}
	}
	if ps := laq.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if limit := laq.ctx.Limit; limit != nil {
		_spec.Limit = *limit
	}
	if offset := laq.ctx.Offset; offset != nil {
		_spec.Offset = *offset
	}
	if ps := laq.order; len(ps) > 0 {
		_spec.Order = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	return _spec
}

func (laq *LessonAudioQuery) sqlQuery(ctx context.Context) *sql.Selector {
	builder := sql.Dialect(laq.driver.Dialect())
	t1 := builder.Table(lessonaudio.Table)
	columns := laq.ctx.Fields
	if len(columns) == 0 {
		columns = lessonaudio.Columns
	}
	selector := builder.Select(t1.Columns(columns...)...).From(t1)
	if laq.sql != nil {
		selector = laq.sql
		selector.Select(selector.Columns(columns...)...)
	}
	if laq.ctx.Unique != nil && *laq.ctx.Unique {
		selector.Distinct()
	}
	for _, m := range laq.modifiers {
		m(selector)
	}
	for _, p := range laq.predicates {
		p(selector)
	}
	for _, p := range laq.order {
		p(selector)
	}
	if offset := laq.ctx.Offset; offset != nil {
		// limit is mandatory for offset clause. We start
		// with default value, and override it below if needed.
		selector.Offset(*offset).Limit(math.MaxInt32)
	}
	if limit := laq.ctx.Limit; limit != nil {
		selector.Limit(*limit)
	}
	return selector
}

// Modify adds a query modifier for attaching custom logic to queries.
func (laq *LessonAudioQuery) Modify(modifiers ...func(s *sql.Selector)) *LessonAudioSelect {
	laq.modifiers = append(laq.modifiers, modifiers...)
	return laq.Select()
}

// LessonAudioGroupBy is the group-by builder for LessonAudio entities.
type LessonAudioGroupBy struct {
	selector
	build *LessonAudioQuery
}

// Aggregate adds the given aggregation functions to the group-by query.
func (lagb *LessonAudioGroupBy) Aggregate(fns ...AggregateFunc) *LessonAudioGroupBy {
	lagb.fns = append(lagb.fns, fns...)
	return lagb
}

// Scan applies the selector query and scans the result into the given value.
func (lagb *LessonAudioGroupBy) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, lagb.build.ctx, "GroupBy")
	if err := lagb.build.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*LessonAudioQuery, *LessonAudioGroupBy](ctx, lagb.build, lagb, lagb.build.inters, v)
}

func (lagb *LessonAudioGroupBy) sqlScan(ctx context.Context, root *LessonAudioQuery, v any) error {
	selector := root.sqlQuery(ctx).Select()
	aggregation := make([]string, 0, len(lagb.fns))
	for _, fn := range lagb.fns {
		aggregation = append(aggregation, fn(selector))
	}
	if len(selector.SelectedColumns()) == 0 {
		columns := make([]string, 0, len(*lagb.flds)+len(lagb.fns))
		for _, f := range *lagb.flds {
			columns = append(columns, selector.C(f))
		}
		columns = append(columns, aggregation...)
		selector.Select(columns...)
	}
	selector.GroupBy(selector.Columns(*lagb.flds...)...)
	if err := selector.Err(); err != nil {
		return err
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := lagb.build.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// LessonAudioSelect is the builder for selecting fields of LessonAudio entities.
type LessonAudioSelect struct {
	*LessonAudioQuery
	selector
}

// Aggregate adds the given aggregation functions to the selector query.
func (las *LessonAudioSelect) Aggregate(fns ...AggregateFunc) *LessonAudioSelect {
	las.fns = append(las.fns, fns...)
	return las
}

// Scan applies the selector query and scans the result into the given value.
func (las *LessonAudioSelect) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, las.ctx, "Select")
	if err := las.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*LessonAudioQuery, *LessonAudioSelect](ctx, las.LessonAudioQuery, las, las.inters, v)
}

func (las *LessonAudioSelect) sqlScan(ctx context.Context, root *LessonAudioQuery, v any) error {
	selector := root.sqlQuery(ctx)
	aggregation := make([]string, 0, len(las.fns))
	for _, fn := range las.fns {
		aggregation = append(aggregation, fn(selector))
	}
	switch n := len(*las.selector.flds); {
	case n == 0 && len(aggregation) > 0:
		selector.Select(aggregation...)
	case n != 0 && len(aggregation) > 0:
		selector.AppendSelect(aggregation...)
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := las.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// Modify adds a query modifier for attaching custom logic to queries.
func (las *LessonAudioSelect) Modify(modifiers ...func(s *sql.Selector)) *LessonAudioSelect {
	las.modifiers = append(las.modifiers, modifiers...)
	return las
}