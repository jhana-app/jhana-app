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
	"github.com/jhana-app/jhana-app/ent/journalrecord"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/user"
)

// JournalRecordQuery is the builder for querying JournalRecord entities.
type JournalRecordQuery struct {
	config
	ctx        *QueryContext
	order      []journalrecord.OrderOption
	inters     []Interceptor
	predicates []predicate.JournalRecord
	withUser   *UserQuery
	withLesson *LessonQuery
	loadTotal  []func(context.Context, []*JournalRecord) error
	modifiers  []func(*sql.Selector)
	// intermediate query (i.e. traversal path).
	sql  *sql.Selector
	path func(context.Context) (*sql.Selector, error)
}

// Where adds a new predicate for the JournalRecordQuery builder.
func (jrq *JournalRecordQuery) Where(ps ...predicate.JournalRecord) *JournalRecordQuery {
	jrq.predicates = append(jrq.predicates, ps...)
	return jrq
}

// Limit the number of records to be returned by this query.
func (jrq *JournalRecordQuery) Limit(limit int) *JournalRecordQuery {
	jrq.ctx.Limit = &limit
	return jrq
}

// Offset to start from.
func (jrq *JournalRecordQuery) Offset(offset int) *JournalRecordQuery {
	jrq.ctx.Offset = &offset
	return jrq
}

// Unique configures the query builder to filter duplicate records on query.
// By default, unique is set to true, and can be disabled using this method.
func (jrq *JournalRecordQuery) Unique(unique bool) *JournalRecordQuery {
	jrq.ctx.Unique = &unique
	return jrq
}

// Order specifies how the records should be ordered.
func (jrq *JournalRecordQuery) Order(o ...journalrecord.OrderOption) *JournalRecordQuery {
	jrq.order = append(jrq.order, o...)
	return jrq
}

// QueryUser chains the current query on the "user" edge.
func (jrq *JournalRecordQuery) QueryUser() *UserQuery {
	query := (&UserClient{config: jrq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := jrq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := jrq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(journalrecord.Table, journalrecord.FieldID, selector),
			sqlgraph.To(user.Table, user.FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, journalrecord.UserTable, journalrecord.UserColumn),
		)
		fromU = sqlgraph.SetNeighbors(jrq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// QueryLesson chains the current query on the "lesson" edge.
func (jrq *JournalRecordQuery) QueryLesson() *LessonQuery {
	query := (&LessonClient{config: jrq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := jrq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := jrq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(journalrecord.Table, journalrecord.FieldID, selector),
			sqlgraph.To(lesson.Table, lesson.FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, journalrecord.LessonTable, journalrecord.LessonColumn),
		)
		fromU = sqlgraph.SetNeighbors(jrq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// First returns the first JournalRecord entity from the query.
// Returns a *NotFoundError when no JournalRecord was found.
func (jrq *JournalRecordQuery) First(ctx context.Context) (*JournalRecord, error) {
	nodes, err := jrq.Limit(1).All(setContextOp(ctx, jrq.ctx, "First"))
	if err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nil, &NotFoundError{journalrecord.Label}
	}
	return nodes[0], nil
}

// FirstX is like First, but panics if an error occurs.
func (jrq *JournalRecordQuery) FirstX(ctx context.Context) *JournalRecord {
	node, err := jrq.First(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return node
}

// FirstID returns the first JournalRecord ID from the query.
// Returns a *NotFoundError when no JournalRecord ID was found.
func (jrq *JournalRecordQuery) FirstID(ctx context.Context) (id gqlid.JournalRecordID, err error) {
	var ids []gqlid.JournalRecordID
	if ids, err = jrq.Limit(1).IDs(setContextOp(ctx, jrq.ctx, "FirstID")); err != nil {
		return
	}
	if len(ids) == 0 {
		err = &NotFoundError{journalrecord.Label}
		return
	}
	return ids[0], nil
}

// FirstIDX is like FirstID, but panics if an error occurs.
func (jrq *JournalRecordQuery) FirstIDX(ctx context.Context) gqlid.JournalRecordID {
	id, err := jrq.FirstID(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return id
}

// Only returns a single JournalRecord entity found by the query, ensuring it only returns one.
// Returns a *NotSingularError when more than one JournalRecord entity is found.
// Returns a *NotFoundError when no JournalRecord entities are found.
func (jrq *JournalRecordQuery) Only(ctx context.Context) (*JournalRecord, error) {
	nodes, err := jrq.Limit(2).All(setContextOp(ctx, jrq.ctx, "Only"))
	if err != nil {
		return nil, err
	}
	switch len(nodes) {
	case 1:
		return nodes[0], nil
	case 0:
		return nil, &NotFoundError{journalrecord.Label}
	default:
		return nil, &NotSingularError{journalrecord.Label}
	}
}

// OnlyX is like Only, but panics if an error occurs.
func (jrq *JournalRecordQuery) OnlyX(ctx context.Context) *JournalRecord {
	node, err := jrq.Only(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// OnlyID is like Only, but returns the only JournalRecord ID in the query.
// Returns a *NotSingularError when more than one JournalRecord ID is found.
// Returns a *NotFoundError when no entities are found.
func (jrq *JournalRecordQuery) OnlyID(ctx context.Context) (id gqlid.JournalRecordID, err error) {
	var ids []gqlid.JournalRecordID
	if ids, err = jrq.Limit(2).IDs(setContextOp(ctx, jrq.ctx, "OnlyID")); err != nil {
		return
	}
	switch len(ids) {
	case 1:
		id = ids[0]
	case 0:
		err = &NotFoundError{journalrecord.Label}
	default:
		err = &NotSingularError{journalrecord.Label}
	}
	return
}

// OnlyIDX is like OnlyID, but panics if an error occurs.
func (jrq *JournalRecordQuery) OnlyIDX(ctx context.Context) gqlid.JournalRecordID {
	id, err := jrq.OnlyID(ctx)
	if err != nil {
		panic(err)
	}
	return id
}

// All executes the query and returns a list of JournalRecords.
func (jrq *JournalRecordQuery) All(ctx context.Context) ([]*JournalRecord, error) {
	ctx = setContextOp(ctx, jrq.ctx, "All")
	if err := jrq.prepareQuery(ctx); err != nil {
		return nil, err
	}
	qr := querierAll[[]*JournalRecord, *JournalRecordQuery]()
	return withInterceptors[[]*JournalRecord](ctx, jrq, qr, jrq.inters)
}

// AllX is like All, but panics if an error occurs.
func (jrq *JournalRecordQuery) AllX(ctx context.Context) []*JournalRecord {
	nodes, err := jrq.All(ctx)
	if err != nil {
		panic(err)
	}
	return nodes
}

// IDs executes the query and returns a list of JournalRecord IDs.
func (jrq *JournalRecordQuery) IDs(ctx context.Context) (ids []gqlid.JournalRecordID, err error) {
	if jrq.ctx.Unique == nil && jrq.path != nil {
		jrq.Unique(true)
	}
	ctx = setContextOp(ctx, jrq.ctx, "IDs")
	if err = jrq.Select(journalrecord.FieldID).Scan(ctx, &ids); err != nil {
		return nil, err
	}
	return ids, nil
}

// IDsX is like IDs, but panics if an error occurs.
func (jrq *JournalRecordQuery) IDsX(ctx context.Context) []gqlid.JournalRecordID {
	ids, err := jrq.IDs(ctx)
	if err != nil {
		panic(err)
	}
	return ids
}

// Count returns the count of the given query.
func (jrq *JournalRecordQuery) Count(ctx context.Context) (int, error) {
	ctx = setContextOp(ctx, jrq.ctx, "Count")
	if err := jrq.prepareQuery(ctx); err != nil {
		return 0, err
	}
	return withInterceptors[int](ctx, jrq, querierCount[*JournalRecordQuery](), jrq.inters)
}

// CountX is like Count, but panics if an error occurs.
func (jrq *JournalRecordQuery) CountX(ctx context.Context) int {
	count, err := jrq.Count(ctx)
	if err != nil {
		panic(err)
	}
	return count
}

// Exist returns true if the query has elements in the graph.
func (jrq *JournalRecordQuery) Exist(ctx context.Context) (bool, error) {
	ctx = setContextOp(ctx, jrq.ctx, "Exist")
	switch _, err := jrq.FirstID(ctx); {
	case IsNotFound(err):
		return false, nil
	case err != nil:
		return false, fmt.Errorf("ent: check existence: %w", err)
	default:
		return true, nil
	}
}

// ExistX is like Exist, but panics if an error occurs.
func (jrq *JournalRecordQuery) ExistX(ctx context.Context) bool {
	exist, err := jrq.Exist(ctx)
	if err != nil {
		panic(err)
	}
	return exist
}

// Clone returns a duplicate of the JournalRecordQuery builder, including all associated steps. It can be
// used to prepare common query builders and use them differently after the clone is made.
func (jrq *JournalRecordQuery) Clone() *JournalRecordQuery {
	if jrq == nil {
		return nil
	}
	return &JournalRecordQuery{
		config:     jrq.config,
		ctx:        jrq.ctx.Clone(),
		order:      append([]journalrecord.OrderOption{}, jrq.order...),
		inters:     append([]Interceptor{}, jrq.inters...),
		predicates: append([]predicate.JournalRecord{}, jrq.predicates...),
		withUser:   jrq.withUser.Clone(),
		withLesson: jrq.withLesson.Clone(),
		// clone intermediate query.
		sql:  jrq.sql.Clone(),
		path: jrq.path,
	}
}

// WithUser tells the query-builder to eager-load the nodes that are connected to
// the "user" edge. The optional arguments are used to configure the query builder of the edge.
func (jrq *JournalRecordQuery) WithUser(opts ...func(*UserQuery)) *JournalRecordQuery {
	query := (&UserClient{config: jrq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	jrq.withUser = query
	return jrq
}

// WithLesson tells the query-builder to eager-load the nodes that are connected to
// the "lesson" edge. The optional arguments are used to configure the query builder of the edge.
func (jrq *JournalRecordQuery) WithLesson(opts ...func(*LessonQuery)) *JournalRecordQuery {
	query := (&LessonClient{config: jrq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	jrq.withLesson = query
	return jrq
}

// GroupBy is used to group vertices by one or more fields/columns.
// It is often used with aggregate functions, like: count, max, mean, min, sum.
//
// Example:
//
//	var v []struct {
//		UserID gqlid.UserID `json:"user_id,omitempty"`
//		Count int `json:"count,omitempty"`
//	}
//
//	client.JournalRecord.Query().
//		GroupBy(journalrecord.FieldUserID).
//		Aggregate(ent.Count()).
//		Scan(ctx, &v)
func (jrq *JournalRecordQuery) GroupBy(field string, fields ...string) *JournalRecordGroupBy {
	jrq.ctx.Fields = append([]string{field}, fields...)
	grbuild := &JournalRecordGroupBy{build: jrq}
	grbuild.flds = &jrq.ctx.Fields
	grbuild.label = journalrecord.Label
	grbuild.scan = grbuild.Scan
	return grbuild
}

// Select allows the selection one or more fields/columns for the given query,
// instead of selecting all fields in the entity.
//
// Example:
//
//	var v []struct {
//		UserID gqlid.UserID `json:"user_id,omitempty"`
//	}
//
//	client.JournalRecord.Query().
//		Select(journalrecord.FieldUserID).
//		Scan(ctx, &v)
func (jrq *JournalRecordQuery) Select(fields ...string) *JournalRecordSelect {
	jrq.ctx.Fields = append(jrq.ctx.Fields, fields...)
	sbuild := &JournalRecordSelect{JournalRecordQuery: jrq}
	sbuild.label = journalrecord.Label
	sbuild.flds, sbuild.scan = &jrq.ctx.Fields, sbuild.Scan
	return sbuild
}

// Aggregate returns a JournalRecordSelect configured with the given aggregations.
func (jrq *JournalRecordQuery) Aggregate(fns ...AggregateFunc) *JournalRecordSelect {
	return jrq.Select().Aggregate(fns...)
}

func (jrq *JournalRecordQuery) prepareQuery(ctx context.Context) error {
	for _, inter := range jrq.inters {
		if inter == nil {
			return fmt.Errorf("ent: uninitialized interceptor (forgotten import ent/runtime?)")
		}
		if trv, ok := inter.(Traverser); ok {
			if err := trv.Traverse(ctx, jrq); err != nil {
				return err
			}
		}
	}
	for _, f := range jrq.ctx.Fields {
		if !journalrecord.ValidColumn(f) {
			return &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
		}
	}
	if jrq.path != nil {
		prev, err := jrq.path(ctx)
		if err != nil {
			return err
		}
		jrq.sql = prev
	}
	return nil
}

func (jrq *JournalRecordQuery) sqlAll(ctx context.Context, hooks ...queryHook) ([]*JournalRecord, error) {
	var (
		nodes       = []*JournalRecord{}
		_spec       = jrq.querySpec()
		loadedTypes = [2]bool{
			jrq.withUser != nil,
			jrq.withLesson != nil,
		}
	)
	_spec.ScanValues = func(columns []string) ([]any, error) {
		return (*JournalRecord).scanValues(nil, columns)
	}
	_spec.Assign = func(columns []string, values []any) error {
		node := &JournalRecord{config: jrq.config}
		nodes = append(nodes, node)
		node.Edges.loadedTypes = loadedTypes
		return node.assignValues(columns, values)
	}
	if len(jrq.modifiers) > 0 {
		_spec.Modifiers = jrq.modifiers
	}
	for i := range hooks {
		hooks[i](ctx, _spec)
	}
	if err := sqlgraph.QueryNodes(ctx, jrq.driver, _spec); err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nodes, nil
	}
	if query := jrq.withUser; query != nil {
		if err := jrq.loadUser(ctx, query, nodes, nil,
			func(n *JournalRecord, e *User) { n.Edges.User = e }); err != nil {
			return nil, err
		}
	}
	if query := jrq.withLesson; query != nil {
		if err := jrq.loadLesson(ctx, query, nodes, nil,
			func(n *JournalRecord, e *Lesson) { n.Edges.Lesson = e }); err != nil {
			return nil, err
		}
	}
	for i := range jrq.loadTotal {
		if err := jrq.loadTotal[i](ctx, nodes); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

func (jrq *JournalRecordQuery) loadUser(ctx context.Context, query *UserQuery, nodes []*JournalRecord, init func(*JournalRecord), assign func(*JournalRecord, *User)) error {
	ids := make([]gqlid.UserID, 0, len(nodes))
	nodeids := make(map[gqlid.UserID][]*JournalRecord)
	for i := range nodes {
		fk := nodes[i].UserID
		if _, ok := nodeids[fk]; !ok {
			ids = append(ids, fk)
		}
		nodeids[fk] = append(nodeids[fk], nodes[i])
	}
	if len(ids) == 0 {
		return nil
	}
	query.Where(user.IDIn(ids...))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		nodes, ok := nodeids[n.ID]
		if !ok {
			return fmt.Errorf(`unexpected foreign-key "user_id" returned %v`, n.ID)
		}
		for i := range nodes {
			assign(nodes[i], n)
		}
	}
	return nil
}
func (jrq *JournalRecordQuery) loadLesson(ctx context.Context, query *LessonQuery, nodes []*JournalRecord, init func(*JournalRecord), assign func(*JournalRecord, *Lesson)) error {
	ids := make([]gqlid.LessonID, 0, len(nodes))
	nodeids := make(map[gqlid.LessonID][]*JournalRecord)
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

func (jrq *JournalRecordQuery) sqlCount(ctx context.Context) (int, error) {
	_spec := jrq.querySpec()
	if len(jrq.modifiers) > 0 {
		_spec.Modifiers = jrq.modifiers
	}
	_spec.Node.Columns = jrq.ctx.Fields
	if len(jrq.ctx.Fields) > 0 {
		_spec.Unique = jrq.ctx.Unique != nil && *jrq.ctx.Unique
	}
	return sqlgraph.CountNodes(ctx, jrq.driver, _spec)
}

func (jrq *JournalRecordQuery) querySpec() *sqlgraph.QuerySpec {
	_spec := sqlgraph.NewQuerySpec(journalrecord.Table, journalrecord.Columns, sqlgraph.NewFieldSpec(journalrecord.FieldID, field.TypeInt64))
	_spec.From = jrq.sql
	if unique := jrq.ctx.Unique; unique != nil {
		_spec.Unique = *unique
	} else if jrq.path != nil {
		_spec.Unique = true
	}
	if fields := jrq.ctx.Fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, journalrecord.FieldID)
		for i := range fields {
			if fields[i] != journalrecord.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, fields[i])
			}
		}
		if jrq.withUser != nil {
			_spec.Node.AddColumnOnce(journalrecord.FieldUserID)
		}
		if jrq.withLesson != nil {
			_spec.Node.AddColumnOnce(journalrecord.FieldLessonID)
		}
	}
	if ps := jrq.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if limit := jrq.ctx.Limit; limit != nil {
		_spec.Limit = *limit
	}
	if offset := jrq.ctx.Offset; offset != nil {
		_spec.Offset = *offset
	}
	if ps := jrq.order; len(ps) > 0 {
		_spec.Order = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	return _spec
}

func (jrq *JournalRecordQuery) sqlQuery(ctx context.Context) *sql.Selector {
	builder := sql.Dialect(jrq.driver.Dialect())
	t1 := builder.Table(journalrecord.Table)
	columns := jrq.ctx.Fields
	if len(columns) == 0 {
		columns = journalrecord.Columns
	}
	selector := builder.Select(t1.Columns(columns...)...).From(t1)
	if jrq.sql != nil {
		selector = jrq.sql
		selector.Select(selector.Columns(columns...)...)
	}
	if jrq.ctx.Unique != nil && *jrq.ctx.Unique {
		selector.Distinct()
	}
	for _, m := range jrq.modifiers {
		m(selector)
	}
	for _, p := range jrq.predicates {
		p(selector)
	}
	for _, p := range jrq.order {
		p(selector)
	}
	if offset := jrq.ctx.Offset; offset != nil {
		// limit is mandatory for offset clause. We start
		// with default value, and override it below if needed.
		selector.Offset(*offset).Limit(math.MaxInt32)
	}
	if limit := jrq.ctx.Limit; limit != nil {
		selector.Limit(*limit)
	}
	return selector
}

// Modify adds a query modifier for attaching custom logic to queries.
func (jrq *JournalRecordQuery) Modify(modifiers ...func(s *sql.Selector)) *JournalRecordSelect {
	jrq.modifiers = append(jrq.modifiers, modifiers...)
	return jrq.Select()
}

// JournalRecordGroupBy is the group-by builder for JournalRecord entities.
type JournalRecordGroupBy struct {
	selector
	build *JournalRecordQuery
}

// Aggregate adds the given aggregation functions to the group-by query.
func (jrgb *JournalRecordGroupBy) Aggregate(fns ...AggregateFunc) *JournalRecordGroupBy {
	jrgb.fns = append(jrgb.fns, fns...)
	return jrgb
}

// Scan applies the selector query and scans the result into the given value.
func (jrgb *JournalRecordGroupBy) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, jrgb.build.ctx, "GroupBy")
	if err := jrgb.build.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*JournalRecordQuery, *JournalRecordGroupBy](ctx, jrgb.build, jrgb, jrgb.build.inters, v)
}

func (jrgb *JournalRecordGroupBy) sqlScan(ctx context.Context, root *JournalRecordQuery, v any) error {
	selector := root.sqlQuery(ctx).Select()
	aggregation := make([]string, 0, len(jrgb.fns))
	for _, fn := range jrgb.fns {
		aggregation = append(aggregation, fn(selector))
	}
	if len(selector.SelectedColumns()) == 0 {
		columns := make([]string, 0, len(*jrgb.flds)+len(jrgb.fns))
		for _, f := range *jrgb.flds {
			columns = append(columns, selector.C(f))
		}
		columns = append(columns, aggregation...)
		selector.Select(columns...)
	}
	selector.GroupBy(selector.Columns(*jrgb.flds...)...)
	if err := selector.Err(); err != nil {
		return err
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := jrgb.build.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// JournalRecordSelect is the builder for selecting fields of JournalRecord entities.
type JournalRecordSelect struct {
	*JournalRecordQuery
	selector
}

// Aggregate adds the given aggregation functions to the selector query.
func (jrs *JournalRecordSelect) Aggregate(fns ...AggregateFunc) *JournalRecordSelect {
	jrs.fns = append(jrs.fns, fns...)
	return jrs
}

// Scan applies the selector query and scans the result into the given value.
func (jrs *JournalRecordSelect) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, jrs.ctx, "Select")
	if err := jrs.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*JournalRecordQuery, *JournalRecordSelect](ctx, jrs.JournalRecordQuery, jrs, jrs.inters, v)
}

func (jrs *JournalRecordSelect) sqlScan(ctx context.Context, root *JournalRecordQuery, v any) error {
	selector := root.sqlQuery(ctx)
	aggregation := make([]string, 0, len(jrs.fns))
	for _, fn := range jrs.fns {
		aggregation = append(aggregation, fn(selector))
	}
	switch n := len(*jrs.selector.flds); {
	case n == 0 && len(aggregation) > 0:
		selector.Select(aggregation...)
	case n != 0 && len(aggregation) > 0:
		selector.AppendSelect(aggregation...)
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := jrs.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// Modify adds a query modifier for attaching custom logic to queries.
func (jrs *JournalRecordSelect) Modify(modifiers ...func(s *sql.Selector)) *JournalRecordSelect {
	jrs.modifiers = append(jrs.modifiers, modifiers...)
	return jrs
}
