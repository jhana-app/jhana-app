// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"database/sql/driver"
	"fmt"
	"math"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/jhana-app/jhana-app/ent/course"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/unit"
)

// CourseQuery is the builder for querying Course entities.
type CourseQuery struct {
	config
	ctx            *QueryContext
	order          []course.OrderOption
	inters         []Interceptor
	predicates     []predicate.Course
	withUnits      *UnitQuery
	loadTotal      []func(context.Context, []*Course) error
	modifiers      []func(*sql.Selector)
	withNamedUnits map[string]*UnitQuery
	// intermediate query (i.e. traversal path).
	sql  *sql.Selector
	path func(context.Context) (*sql.Selector, error)
}

// Where adds a new predicate for the CourseQuery builder.
func (cq *CourseQuery) Where(ps ...predicate.Course) *CourseQuery {
	cq.predicates = append(cq.predicates, ps...)
	return cq
}

// Limit the number of records to be returned by this query.
func (cq *CourseQuery) Limit(limit int) *CourseQuery {
	cq.ctx.Limit = &limit
	return cq
}

// Offset to start from.
func (cq *CourseQuery) Offset(offset int) *CourseQuery {
	cq.ctx.Offset = &offset
	return cq
}

// Unique configures the query builder to filter duplicate records on query.
// By default, unique is set to true, and can be disabled using this method.
func (cq *CourseQuery) Unique(unique bool) *CourseQuery {
	cq.ctx.Unique = &unique
	return cq
}

// Order specifies how the records should be ordered.
func (cq *CourseQuery) Order(o ...course.OrderOption) *CourseQuery {
	cq.order = append(cq.order, o...)
	return cq
}

// QueryUnits chains the current query on the "units" edge.
func (cq *CourseQuery) QueryUnits() *UnitQuery {
	query := (&UnitClient{config: cq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := cq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := cq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(course.Table, course.FieldID, selector),
			sqlgraph.To(unit.Table, unit.FieldID),
			sqlgraph.Edge(sqlgraph.O2M, true, course.UnitsTable, course.UnitsColumn),
		)
		fromU = sqlgraph.SetNeighbors(cq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// First returns the first Course entity from the query.
// Returns a *NotFoundError when no Course was found.
func (cq *CourseQuery) First(ctx context.Context) (*Course, error) {
	nodes, err := cq.Limit(1).All(setContextOp(ctx, cq.ctx, "First"))
	if err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nil, &NotFoundError{course.Label}
	}
	return nodes[0], nil
}

// FirstX is like First, but panics if an error occurs.
func (cq *CourseQuery) FirstX(ctx context.Context) *Course {
	node, err := cq.First(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return node
}

// FirstID returns the first Course ID from the query.
// Returns a *NotFoundError when no Course ID was found.
func (cq *CourseQuery) FirstID(ctx context.Context) (id gqlid.CourseID, err error) {
	var ids []gqlid.CourseID
	if ids, err = cq.Limit(1).IDs(setContextOp(ctx, cq.ctx, "FirstID")); err != nil {
		return
	}
	if len(ids) == 0 {
		err = &NotFoundError{course.Label}
		return
	}
	return ids[0], nil
}

// FirstIDX is like FirstID, but panics if an error occurs.
func (cq *CourseQuery) FirstIDX(ctx context.Context) gqlid.CourseID {
	id, err := cq.FirstID(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return id
}

// Only returns a single Course entity found by the query, ensuring it only returns one.
// Returns a *NotSingularError when more than one Course entity is found.
// Returns a *NotFoundError when no Course entities are found.
func (cq *CourseQuery) Only(ctx context.Context) (*Course, error) {
	nodes, err := cq.Limit(2).All(setContextOp(ctx, cq.ctx, "Only"))
	if err != nil {
		return nil, err
	}
	switch len(nodes) {
	case 1:
		return nodes[0], nil
	case 0:
		return nil, &NotFoundError{course.Label}
	default:
		return nil, &NotSingularError{course.Label}
	}
}

// OnlyX is like Only, but panics if an error occurs.
func (cq *CourseQuery) OnlyX(ctx context.Context) *Course {
	node, err := cq.Only(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// OnlyID is like Only, but returns the only Course ID in the query.
// Returns a *NotSingularError when more than one Course ID is found.
// Returns a *NotFoundError when no entities are found.
func (cq *CourseQuery) OnlyID(ctx context.Context) (id gqlid.CourseID, err error) {
	var ids []gqlid.CourseID
	if ids, err = cq.Limit(2).IDs(setContextOp(ctx, cq.ctx, "OnlyID")); err != nil {
		return
	}
	switch len(ids) {
	case 1:
		id = ids[0]
	case 0:
		err = &NotFoundError{course.Label}
	default:
		err = &NotSingularError{course.Label}
	}
	return
}

// OnlyIDX is like OnlyID, but panics if an error occurs.
func (cq *CourseQuery) OnlyIDX(ctx context.Context) gqlid.CourseID {
	id, err := cq.OnlyID(ctx)
	if err != nil {
		panic(err)
	}
	return id
}

// All executes the query and returns a list of Courses.
func (cq *CourseQuery) All(ctx context.Context) ([]*Course, error) {
	ctx = setContextOp(ctx, cq.ctx, "All")
	if err := cq.prepareQuery(ctx); err != nil {
		return nil, err
	}
	qr := querierAll[[]*Course, *CourseQuery]()
	return withInterceptors[[]*Course](ctx, cq, qr, cq.inters)
}

// AllX is like All, but panics if an error occurs.
func (cq *CourseQuery) AllX(ctx context.Context) []*Course {
	nodes, err := cq.All(ctx)
	if err != nil {
		panic(err)
	}
	return nodes
}

// IDs executes the query and returns a list of Course IDs.
func (cq *CourseQuery) IDs(ctx context.Context) (ids []gqlid.CourseID, err error) {
	if cq.ctx.Unique == nil && cq.path != nil {
		cq.Unique(true)
	}
	ctx = setContextOp(ctx, cq.ctx, "IDs")
	if err = cq.Select(course.FieldID).Scan(ctx, &ids); err != nil {
		return nil, err
	}
	return ids, nil
}

// IDsX is like IDs, but panics if an error occurs.
func (cq *CourseQuery) IDsX(ctx context.Context) []gqlid.CourseID {
	ids, err := cq.IDs(ctx)
	if err != nil {
		panic(err)
	}
	return ids
}

// Count returns the count of the given query.
func (cq *CourseQuery) Count(ctx context.Context) (int, error) {
	ctx = setContextOp(ctx, cq.ctx, "Count")
	if err := cq.prepareQuery(ctx); err != nil {
		return 0, err
	}
	return withInterceptors[int](ctx, cq, querierCount[*CourseQuery](), cq.inters)
}

// CountX is like Count, but panics if an error occurs.
func (cq *CourseQuery) CountX(ctx context.Context) int {
	count, err := cq.Count(ctx)
	if err != nil {
		panic(err)
	}
	return count
}

// Exist returns true if the query has elements in the graph.
func (cq *CourseQuery) Exist(ctx context.Context) (bool, error) {
	ctx = setContextOp(ctx, cq.ctx, "Exist")
	switch _, err := cq.FirstID(ctx); {
	case IsNotFound(err):
		return false, nil
	case err != nil:
		return false, fmt.Errorf("ent: check existence: %w", err)
	default:
		return true, nil
	}
}

// ExistX is like Exist, but panics if an error occurs.
func (cq *CourseQuery) ExistX(ctx context.Context) bool {
	exist, err := cq.Exist(ctx)
	if err != nil {
		panic(err)
	}
	return exist
}

// Clone returns a duplicate of the CourseQuery builder, including all associated steps. It can be
// used to prepare common query builders and use them differently after the clone is made.
func (cq *CourseQuery) Clone() *CourseQuery {
	if cq == nil {
		return nil
	}
	return &CourseQuery{
		config:     cq.config,
		ctx:        cq.ctx.Clone(),
		order:      append([]course.OrderOption{}, cq.order...),
		inters:     append([]Interceptor{}, cq.inters...),
		predicates: append([]predicate.Course{}, cq.predicates...),
		withUnits:  cq.withUnits.Clone(),
		// clone intermediate query.
		sql:  cq.sql.Clone(),
		path: cq.path,
	}
}

// WithUnits tells the query-builder to eager-load the nodes that are connected to
// the "units" edge. The optional arguments are used to configure the query builder of the edge.
func (cq *CourseQuery) WithUnits(opts ...func(*UnitQuery)) *CourseQuery {
	query := (&UnitClient{config: cq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	cq.withUnits = query
	return cq
}

// GroupBy is used to group vertices by one or more fields/columns.
// It is often used with aggregate functions, like: count, max, mean, min, sum.
//
// Example:
//
//	var v []struct {
//		IconImage string `json:"iconImage,omitempty"`
//		Count int `json:"count,omitempty"`
//	}
//
//	client.Course.Query().
//		GroupBy(course.FieldIconImage).
//		Aggregate(ent.Count()).
//		Scan(ctx, &v)
func (cq *CourseQuery) GroupBy(field string, fields ...string) *CourseGroupBy {
	cq.ctx.Fields = append([]string{field}, fields...)
	grbuild := &CourseGroupBy{build: cq}
	grbuild.flds = &cq.ctx.Fields
	grbuild.label = course.Label
	grbuild.scan = grbuild.Scan
	return grbuild
}

// Select allows the selection one or more fields/columns for the given query,
// instead of selecting all fields in the entity.
//
// Example:
//
//	var v []struct {
//		IconImage string `json:"iconImage,omitempty"`
//	}
//
//	client.Course.Query().
//		Select(course.FieldIconImage).
//		Scan(ctx, &v)
func (cq *CourseQuery) Select(fields ...string) *CourseSelect {
	cq.ctx.Fields = append(cq.ctx.Fields, fields...)
	sbuild := &CourseSelect{CourseQuery: cq}
	sbuild.label = course.Label
	sbuild.flds, sbuild.scan = &cq.ctx.Fields, sbuild.Scan
	return sbuild
}

// Aggregate returns a CourseSelect configured with the given aggregations.
func (cq *CourseQuery) Aggregate(fns ...AggregateFunc) *CourseSelect {
	return cq.Select().Aggregate(fns...)
}

func (cq *CourseQuery) prepareQuery(ctx context.Context) error {
	for _, inter := range cq.inters {
		if inter == nil {
			return fmt.Errorf("ent: uninitialized interceptor (forgotten import ent/runtime?)")
		}
		if trv, ok := inter.(Traverser); ok {
			if err := trv.Traverse(ctx, cq); err != nil {
				return err
			}
		}
	}
	for _, f := range cq.ctx.Fields {
		if !course.ValidColumn(f) {
			return &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
		}
	}
	if cq.path != nil {
		prev, err := cq.path(ctx)
		if err != nil {
			return err
		}
		cq.sql = prev
	}
	return nil
}

func (cq *CourseQuery) sqlAll(ctx context.Context, hooks ...queryHook) ([]*Course, error) {
	var (
		nodes       = []*Course{}
		_spec       = cq.querySpec()
		loadedTypes = [1]bool{
			cq.withUnits != nil,
		}
	)
	_spec.ScanValues = func(columns []string) ([]any, error) {
		return (*Course).scanValues(nil, columns)
	}
	_spec.Assign = func(columns []string, values []any) error {
		node := &Course{config: cq.config}
		nodes = append(nodes, node)
		node.Edges.loadedTypes = loadedTypes
		return node.assignValues(columns, values)
	}
	if len(cq.modifiers) > 0 {
		_spec.Modifiers = cq.modifiers
	}
	for i := range hooks {
		hooks[i](ctx, _spec)
	}
	if err := sqlgraph.QueryNodes(ctx, cq.driver, _spec); err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nodes, nil
	}
	if query := cq.withUnits; query != nil {
		if err := cq.loadUnits(ctx, query, nodes,
			func(n *Course) { n.Edges.Units = []*Unit{} },
			func(n *Course, e *Unit) { n.Edges.Units = append(n.Edges.Units, e) }); err != nil {
			return nil, err
		}
	}
	for name, query := range cq.withNamedUnits {
		if err := cq.loadUnits(ctx, query, nodes,
			func(n *Course) { n.appendNamedUnits(name) },
			func(n *Course, e *Unit) { n.appendNamedUnits(name, e) }); err != nil {
			return nil, err
		}
	}
	for i := range cq.loadTotal {
		if err := cq.loadTotal[i](ctx, nodes); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

func (cq *CourseQuery) loadUnits(ctx context.Context, query *UnitQuery, nodes []*Course, init func(*Course), assign func(*Course, *Unit)) error {
	fks := make([]driver.Value, 0, len(nodes))
	nodeids := make(map[gqlid.CourseID]*Course)
	for i := range nodes {
		fks = append(fks, nodes[i].ID)
		nodeids[nodes[i].ID] = nodes[i]
		if init != nil {
			init(nodes[i])
		}
	}
	if len(query.ctx.Fields) > 0 {
		query.ctx.AppendFieldOnce(unit.FieldCourseID)
	}
	query.Where(predicate.Unit(func(s *sql.Selector) {
		s.Where(sql.InValues(s.C(course.UnitsColumn), fks...))
	}))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		fk := n.CourseID
		node, ok := nodeids[fk]
		if !ok {
			return fmt.Errorf(`unexpected referenced foreign-key "course_id" returned %v for node %v`, fk, n.ID)
		}
		assign(node, n)
	}
	return nil
}

func (cq *CourseQuery) sqlCount(ctx context.Context) (int, error) {
	_spec := cq.querySpec()
	if len(cq.modifiers) > 0 {
		_spec.Modifiers = cq.modifiers
	}
	_spec.Node.Columns = cq.ctx.Fields
	if len(cq.ctx.Fields) > 0 {
		_spec.Unique = cq.ctx.Unique != nil && *cq.ctx.Unique
	}
	return sqlgraph.CountNodes(ctx, cq.driver, _spec)
}

func (cq *CourseQuery) querySpec() *sqlgraph.QuerySpec {
	_spec := sqlgraph.NewQuerySpec(course.Table, course.Columns, sqlgraph.NewFieldSpec(course.FieldID, field.TypeInt64))
	_spec.From = cq.sql
	if unique := cq.ctx.Unique; unique != nil {
		_spec.Unique = *unique
	} else if cq.path != nil {
		_spec.Unique = true
	}
	if fields := cq.ctx.Fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, course.FieldID)
		for i := range fields {
			if fields[i] != course.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, fields[i])
			}
		}
	}
	if ps := cq.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if limit := cq.ctx.Limit; limit != nil {
		_spec.Limit = *limit
	}
	if offset := cq.ctx.Offset; offset != nil {
		_spec.Offset = *offset
	}
	if ps := cq.order; len(ps) > 0 {
		_spec.Order = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	return _spec
}

func (cq *CourseQuery) sqlQuery(ctx context.Context) *sql.Selector {
	builder := sql.Dialect(cq.driver.Dialect())
	t1 := builder.Table(course.Table)
	columns := cq.ctx.Fields
	if len(columns) == 0 {
		columns = course.Columns
	}
	selector := builder.Select(t1.Columns(columns...)...).From(t1)
	if cq.sql != nil {
		selector = cq.sql
		selector.Select(selector.Columns(columns...)...)
	}
	if cq.ctx.Unique != nil && *cq.ctx.Unique {
		selector.Distinct()
	}
	for _, m := range cq.modifiers {
		m(selector)
	}
	for _, p := range cq.predicates {
		p(selector)
	}
	for _, p := range cq.order {
		p(selector)
	}
	if offset := cq.ctx.Offset; offset != nil {
		// limit is mandatory for offset clause. We start
		// with default value, and override it below if needed.
		selector.Offset(*offset).Limit(math.MaxInt32)
	}
	if limit := cq.ctx.Limit; limit != nil {
		selector.Limit(*limit)
	}
	return selector
}

// Modify adds a query modifier for attaching custom logic to queries.
func (cq *CourseQuery) Modify(modifiers ...func(s *sql.Selector)) *CourseSelect {
	cq.modifiers = append(cq.modifiers, modifiers...)
	return cq.Select()
}

// WithNamedUnits tells the query-builder to eager-load the nodes that are connected to the "units"
// edge with the given name. The optional arguments are used to configure the query builder of the edge.
func (cq *CourseQuery) WithNamedUnits(name string, opts ...func(*UnitQuery)) *CourseQuery {
	query := (&UnitClient{config: cq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	if cq.withNamedUnits == nil {
		cq.withNamedUnits = make(map[string]*UnitQuery)
	}
	cq.withNamedUnits[name] = query
	return cq
}

// CourseGroupBy is the group-by builder for Course entities.
type CourseGroupBy struct {
	selector
	build *CourseQuery
}

// Aggregate adds the given aggregation functions to the group-by query.
func (cgb *CourseGroupBy) Aggregate(fns ...AggregateFunc) *CourseGroupBy {
	cgb.fns = append(cgb.fns, fns...)
	return cgb
}

// Scan applies the selector query and scans the result into the given value.
func (cgb *CourseGroupBy) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, cgb.build.ctx, "GroupBy")
	if err := cgb.build.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*CourseQuery, *CourseGroupBy](ctx, cgb.build, cgb, cgb.build.inters, v)
}

func (cgb *CourseGroupBy) sqlScan(ctx context.Context, root *CourseQuery, v any) error {
	selector := root.sqlQuery(ctx).Select()
	aggregation := make([]string, 0, len(cgb.fns))
	for _, fn := range cgb.fns {
		aggregation = append(aggregation, fn(selector))
	}
	if len(selector.SelectedColumns()) == 0 {
		columns := make([]string, 0, len(*cgb.flds)+len(cgb.fns))
		for _, f := range *cgb.flds {
			columns = append(columns, selector.C(f))
		}
		columns = append(columns, aggregation...)
		selector.Select(columns...)
	}
	selector.GroupBy(selector.Columns(*cgb.flds...)...)
	if err := selector.Err(); err != nil {
		return err
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := cgb.build.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// CourseSelect is the builder for selecting fields of Course entities.
type CourseSelect struct {
	*CourseQuery
	selector
}

// Aggregate adds the given aggregation functions to the selector query.
func (cs *CourseSelect) Aggregate(fns ...AggregateFunc) *CourseSelect {
	cs.fns = append(cs.fns, fns...)
	return cs
}

// Scan applies the selector query and scans the result into the given value.
func (cs *CourseSelect) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, cs.ctx, "Select")
	if err := cs.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*CourseQuery, *CourseSelect](ctx, cs.CourseQuery, cs, cs.inters, v)
}

func (cs *CourseSelect) sqlScan(ctx context.Context, root *CourseQuery, v any) error {
	selector := root.sqlQuery(ctx)
	aggregation := make([]string, 0, len(cs.fns))
	for _, fn := range cs.fns {
		aggregation = append(aggregation, fn(selector))
	}
	switch n := len(*cs.selector.flds); {
	case n == 0 && len(aggregation) > 0:
		selector.Select(aggregation...)
	case n != 0 && len(aggregation) > 0:
		selector.AppendSelect(aggregation...)
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := cs.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// Modify adds a query modifier for attaching custom logic to queries.
func (cs *CourseSelect) Modify(modifiers ...func(s *sql.Selector)) *CourseSelect {
	cs.modifiers = append(cs.modifiers, modifiers...)
	return cs
}
