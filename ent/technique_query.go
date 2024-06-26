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
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/lesson"
	"github.com/jhana-app/jhana-app/ent/lessontechnique"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/technique"
	"github.com/jhana-app/jhana-app/ent/unit"
	"github.com/jhana-app/jhana-app/ent/unittechnique"
)

// TechniqueQuery is the builder for querying Technique entities.
type TechniqueQuery struct {
	config
	ctx                       *QueryContext
	order                     []technique.OrderOption
	inters                    []Interceptor
	predicates                []predicate.Technique
	withUnit                  *UnitQuery
	withLessons               *LessonQuery
	withTechniques            *UnitQuery
	withLessonTechniques      *LessonTechniqueQuery
	withUnitTechniques        *UnitTechniqueQuery
	loadTotal                 []func(context.Context, []*Technique) error
	modifiers                 []func(*sql.Selector)
	withNamedLessons          map[string]*LessonQuery
	withNamedTechniques       map[string]*UnitQuery
	withNamedLessonTechniques map[string]*LessonTechniqueQuery
	withNamedUnitTechniques   map[string]*UnitTechniqueQuery
	// intermediate query (i.e. traversal path).
	sql  *sql.Selector
	path func(context.Context) (*sql.Selector, error)
}

// Where adds a new predicate for the TechniqueQuery builder.
func (tq *TechniqueQuery) Where(ps ...predicate.Technique) *TechniqueQuery {
	tq.predicates = append(tq.predicates, ps...)
	return tq
}

// Limit the number of records to be returned by this query.
func (tq *TechniqueQuery) Limit(limit int) *TechniqueQuery {
	tq.ctx.Limit = &limit
	return tq
}

// Offset to start from.
func (tq *TechniqueQuery) Offset(offset int) *TechniqueQuery {
	tq.ctx.Offset = &offset
	return tq
}

// Unique configures the query builder to filter duplicate records on query.
// By default, unique is set to true, and can be disabled using this method.
func (tq *TechniqueQuery) Unique(unique bool) *TechniqueQuery {
	tq.ctx.Unique = &unique
	return tq
}

// Order specifies how the records should be ordered.
func (tq *TechniqueQuery) Order(o ...technique.OrderOption) *TechniqueQuery {
	tq.order = append(tq.order, o...)
	return tq
}

// QueryUnit chains the current query on the "unit" edge.
func (tq *TechniqueQuery) QueryUnit() *UnitQuery {
	query := (&UnitClient{config: tq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := tq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := tq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(technique.Table, technique.FieldID, selector),
			sqlgraph.To(unit.Table, unit.FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, technique.UnitTable, technique.UnitColumn),
		)
		fromU = sqlgraph.SetNeighbors(tq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// QueryLessons chains the current query on the "lessons" edge.
func (tq *TechniqueQuery) QueryLessons() *LessonQuery {
	query := (&LessonClient{config: tq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := tq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := tq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(technique.Table, technique.FieldID, selector),
			sqlgraph.To(lesson.Table, lesson.FieldID),
			sqlgraph.Edge(sqlgraph.M2M, true, technique.LessonsTable, technique.LessonsPrimaryKey...),
		)
		fromU = sqlgraph.SetNeighbors(tq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// QueryTechniques chains the current query on the "techniques" edge.
func (tq *TechniqueQuery) QueryTechniques() *UnitQuery {
	query := (&UnitClient{config: tq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := tq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := tq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(technique.Table, technique.FieldID, selector),
			sqlgraph.To(unit.Table, unit.FieldID),
			sqlgraph.Edge(sqlgraph.M2M, true, technique.TechniquesTable, technique.TechniquesPrimaryKey...),
		)
		fromU = sqlgraph.SetNeighbors(tq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// QueryLessonTechniques chains the current query on the "lessonTechniques" edge.
func (tq *TechniqueQuery) QueryLessonTechniques() *LessonTechniqueQuery {
	query := (&LessonTechniqueClient{config: tq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := tq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := tq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(technique.Table, technique.FieldID, selector),
			sqlgraph.To(lessontechnique.Table, lessontechnique.TechniqueColumn),
			sqlgraph.Edge(sqlgraph.O2M, true, technique.LessonTechniquesTable, technique.LessonTechniquesColumn),
		)
		fromU = sqlgraph.SetNeighbors(tq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// QueryUnitTechniques chains the current query on the "unitTechniques" edge.
func (tq *TechniqueQuery) QueryUnitTechniques() *UnitTechniqueQuery {
	query := (&UnitTechniqueClient{config: tq.config}).Query()
	query.path = func(ctx context.Context) (fromU *sql.Selector, err error) {
		if err := tq.prepareQuery(ctx); err != nil {
			return nil, err
		}
		selector := tq.sqlQuery(ctx)
		if err := selector.Err(); err != nil {
			return nil, err
		}
		step := sqlgraph.NewStep(
			sqlgraph.From(technique.Table, technique.FieldID, selector),
			sqlgraph.To(unittechnique.Table, unittechnique.TechniqueColumn),
			sqlgraph.Edge(sqlgraph.O2M, true, technique.UnitTechniquesTable, technique.UnitTechniquesColumn),
		)
		fromU = sqlgraph.SetNeighbors(tq.driver.Dialect(), step)
		return fromU, nil
	}
	return query
}

// First returns the first Technique entity from the query.
// Returns a *NotFoundError when no Technique was found.
func (tq *TechniqueQuery) First(ctx context.Context) (*Technique, error) {
	nodes, err := tq.Limit(1).All(setContextOp(ctx, tq.ctx, "First"))
	if err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nil, &NotFoundError{technique.Label}
	}
	return nodes[0], nil
}

// FirstX is like First, but panics if an error occurs.
func (tq *TechniqueQuery) FirstX(ctx context.Context) *Technique {
	node, err := tq.First(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return node
}

// FirstID returns the first Technique ID from the query.
// Returns a *NotFoundError when no Technique ID was found.
func (tq *TechniqueQuery) FirstID(ctx context.Context) (id gqlid.TechniqueID, err error) {
	var ids []gqlid.TechniqueID
	if ids, err = tq.Limit(1).IDs(setContextOp(ctx, tq.ctx, "FirstID")); err != nil {
		return
	}
	if len(ids) == 0 {
		err = &NotFoundError{technique.Label}
		return
	}
	return ids[0], nil
}

// FirstIDX is like FirstID, but panics if an error occurs.
func (tq *TechniqueQuery) FirstIDX(ctx context.Context) gqlid.TechniqueID {
	id, err := tq.FirstID(ctx)
	if err != nil && !IsNotFound(err) {
		panic(err)
	}
	return id
}

// Only returns a single Technique entity found by the query, ensuring it only returns one.
// Returns a *NotSingularError when more than one Technique entity is found.
// Returns a *NotFoundError when no Technique entities are found.
func (tq *TechniqueQuery) Only(ctx context.Context) (*Technique, error) {
	nodes, err := tq.Limit(2).All(setContextOp(ctx, tq.ctx, "Only"))
	if err != nil {
		return nil, err
	}
	switch len(nodes) {
	case 1:
		return nodes[0], nil
	case 0:
		return nil, &NotFoundError{technique.Label}
	default:
		return nil, &NotSingularError{technique.Label}
	}
}

// OnlyX is like Only, but panics if an error occurs.
func (tq *TechniqueQuery) OnlyX(ctx context.Context) *Technique {
	node, err := tq.Only(ctx)
	if err != nil {
		panic(err)
	}
	return node
}

// OnlyID is like Only, but returns the only Technique ID in the query.
// Returns a *NotSingularError when more than one Technique ID is found.
// Returns a *NotFoundError when no entities are found.
func (tq *TechniqueQuery) OnlyID(ctx context.Context) (id gqlid.TechniqueID, err error) {
	var ids []gqlid.TechniqueID
	if ids, err = tq.Limit(2).IDs(setContextOp(ctx, tq.ctx, "OnlyID")); err != nil {
		return
	}
	switch len(ids) {
	case 1:
		id = ids[0]
	case 0:
		err = &NotFoundError{technique.Label}
	default:
		err = &NotSingularError{technique.Label}
	}
	return
}

// OnlyIDX is like OnlyID, but panics if an error occurs.
func (tq *TechniqueQuery) OnlyIDX(ctx context.Context) gqlid.TechniqueID {
	id, err := tq.OnlyID(ctx)
	if err != nil {
		panic(err)
	}
	return id
}

// All executes the query and returns a list of Techniques.
func (tq *TechniqueQuery) All(ctx context.Context) ([]*Technique, error) {
	ctx = setContextOp(ctx, tq.ctx, "All")
	if err := tq.prepareQuery(ctx); err != nil {
		return nil, err
	}
	qr := querierAll[[]*Technique, *TechniqueQuery]()
	return withInterceptors[[]*Technique](ctx, tq, qr, tq.inters)
}

// AllX is like All, but panics if an error occurs.
func (tq *TechniqueQuery) AllX(ctx context.Context) []*Technique {
	nodes, err := tq.All(ctx)
	if err != nil {
		panic(err)
	}
	return nodes
}

// IDs executes the query and returns a list of Technique IDs.
func (tq *TechniqueQuery) IDs(ctx context.Context) (ids []gqlid.TechniqueID, err error) {
	if tq.ctx.Unique == nil && tq.path != nil {
		tq.Unique(true)
	}
	ctx = setContextOp(ctx, tq.ctx, "IDs")
	if err = tq.Select(technique.FieldID).Scan(ctx, &ids); err != nil {
		return nil, err
	}
	return ids, nil
}

// IDsX is like IDs, but panics if an error occurs.
func (tq *TechniqueQuery) IDsX(ctx context.Context) []gqlid.TechniqueID {
	ids, err := tq.IDs(ctx)
	if err != nil {
		panic(err)
	}
	return ids
}

// Count returns the count of the given query.
func (tq *TechniqueQuery) Count(ctx context.Context) (int, error) {
	ctx = setContextOp(ctx, tq.ctx, "Count")
	if err := tq.prepareQuery(ctx); err != nil {
		return 0, err
	}
	return withInterceptors[int](ctx, tq, querierCount[*TechniqueQuery](), tq.inters)
}

// CountX is like Count, but panics if an error occurs.
func (tq *TechniqueQuery) CountX(ctx context.Context) int {
	count, err := tq.Count(ctx)
	if err != nil {
		panic(err)
	}
	return count
}

// Exist returns true if the query has elements in the graph.
func (tq *TechniqueQuery) Exist(ctx context.Context) (bool, error) {
	ctx = setContextOp(ctx, tq.ctx, "Exist")
	switch _, err := tq.FirstID(ctx); {
	case IsNotFound(err):
		return false, nil
	case err != nil:
		return false, fmt.Errorf("ent: check existence: %w", err)
	default:
		return true, nil
	}
}

// ExistX is like Exist, but panics if an error occurs.
func (tq *TechniqueQuery) ExistX(ctx context.Context) bool {
	exist, err := tq.Exist(ctx)
	if err != nil {
		panic(err)
	}
	return exist
}

// Clone returns a duplicate of the TechniqueQuery builder, including all associated steps. It can be
// used to prepare common query builders and use them differently after the clone is made.
func (tq *TechniqueQuery) Clone() *TechniqueQuery {
	if tq == nil {
		return nil
	}
	return &TechniqueQuery{
		config:               tq.config,
		ctx:                  tq.ctx.Clone(),
		order:                append([]technique.OrderOption{}, tq.order...),
		inters:               append([]Interceptor{}, tq.inters...),
		predicates:           append([]predicate.Technique{}, tq.predicates...),
		withUnit:             tq.withUnit.Clone(),
		withLessons:          tq.withLessons.Clone(),
		withTechniques:       tq.withTechniques.Clone(),
		withLessonTechniques: tq.withLessonTechniques.Clone(),
		withUnitTechniques:   tq.withUnitTechniques.Clone(),
		// clone intermediate query.
		sql:  tq.sql.Clone(),
		path: tq.path,
	}
}

// WithUnit tells the query-builder to eager-load the nodes that are connected to
// the "unit" edge. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithUnit(opts ...func(*UnitQuery)) *TechniqueQuery {
	query := (&UnitClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	tq.withUnit = query
	return tq
}

// WithLessons tells the query-builder to eager-load the nodes that are connected to
// the "lessons" edge. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithLessons(opts ...func(*LessonQuery)) *TechniqueQuery {
	query := (&LessonClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	tq.withLessons = query
	return tq
}

// WithTechniques tells the query-builder to eager-load the nodes that are connected to
// the "techniques" edge. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithTechniques(opts ...func(*UnitQuery)) *TechniqueQuery {
	query := (&UnitClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	tq.withTechniques = query
	return tq
}

// WithLessonTechniques tells the query-builder to eager-load the nodes that are connected to
// the "lessonTechniques" edge. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithLessonTechniques(opts ...func(*LessonTechniqueQuery)) *TechniqueQuery {
	query := (&LessonTechniqueClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	tq.withLessonTechniques = query
	return tq
}

// WithUnitTechniques tells the query-builder to eager-load the nodes that are connected to
// the "unitTechniques" edge. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithUnitTechniques(opts ...func(*UnitTechniqueQuery)) *TechniqueQuery {
	query := (&UnitTechniqueClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	tq.withUnitTechniques = query
	return tq
}

// GroupBy is used to group vertices by one or more fields/columns.
// It is often used with aggregate functions, like: count, max, mean, min, sum.
//
// Example:
//
//	var v []struct {
//		UnitID gqlid.UnitID `json:"unit_id,omitempty"`
//		Count int `json:"count,omitempty"`
//	}
//
//	client.Technique.Query().
//		GroupBy(technique.FieldUnitID).
//		Aggregate(ent.Count()).
//		Scan(ctx, &v)
func (tq *TechniqueQuery) GroupBy(field string, fields ...string) *TechniqueGroupBy {
	tq.ctx.Fields = append([]string{field}, fields...)
	grbuild := &TechniqueGroupBy{build: tq}
	grbuild.flds = &tq.ctx.Fields
	grbuild.label = technique.Label
	grbuild.scan = grbuild.Scan
	return grbuild
}

// Select allows the selection one or more fields/columns for the given query,
// instead of selecting all fields in the entity.
//
// Example:
//
//	var v []struct {
//		UnitID gqlid.UnitID `json:"unit_id,omitempty"`
//	}
//
//	client.Technique.Query().
//		Select(technique.FieldUnitID).
//		Scan(ctx, &v)
func (tq *TechniqueQuery) Select(fields ...string) *TechniqueSelect {
	tq.ctx.Fields = append(tq.ctx.Fields, fields...)
	sbuild := &TechniqueSelect{TechniqueQuery: tq}
	sbuild.label = technique.Label
	sbuild.flds, sbuild.scan = &tq.ctx.Fields, sbuild.Scan
	return sbuild
}

// Aggregate returns a TechniqueSelect configured with the given aggregations.
func (tq *TechniqueQuery) Aggregate(fns ...AggregateFunc) *TechniqueSelect {
	return tq.Select().Aggregate(fns...)
}

func (tq *TechniqueQuery) prepareQuery(ctx context.Context) error {
	for _, inter := range tq.inters {
		if inter == nil {
			return fmt.Errorf("ent: uninitialized interceptor (forgotten import ent/runtime?)")
		}
		if trv, ok := inter.(Traverser); ok {
			if err := trv.Traverse(ctx, tq); err != nil {
				return err
			}
		}
	}
	for _, f := range tq.ctx.Fields {
		if !technique.ValidColumn(f) {
			return &ValidationError{Name: f, err: fmt.Errorf("ent: invalid field %q for query", f)}
		}
	}
	if tq.path != nil {
		prev, err := tq.path(ctx)
		if err != nil {
			return err
		}
		tq.sql = prev
	}
	return nil
}

func (tq *TechniqueQuery) sqlAll(ctx context.Context, hooks ...queryHook) ([]*Technique, error) {
	var (
		nodes       = []*Technique{}
		_spec       = tq.querySpec()
		loadedTypes = [5]bool{
			tq.withUnit != nil,
			tq.withLessons != nil,
			tq.withTechniques != nil,
			tq.withLessonTechniques != nil,
			tq.withUnitTechniques != nil,
		}
	)
	_spec.ScanValues = func(columns []string) ([]any, error) {
		return (*Technique).scanValues(nil, columns)
	}
	_spec.Assign = func(columns []string, values []any) error {
		node := &Technique{config: tq.config}
		nodes = append(nodes, node)
		node.Edges.loadedTypes = loadedTypes
		return node.assignValues(columns, values)
	}
	if len(tq.modifiers) > 0 {
		_spec.Modifiers = tq.modifiers
	}
	for i := range hooks {
		hooks[i](ctx, _spec)
	}
	if err := sqlgraph.QueryNodes(ctx, tq.driver, _spec); err != nil {
		return nil, err
	}
	if len(nodes) == 0 {
		return nodes, nil
	}
	if query := tq.withUnit; query != nil {
		if err := tq.loadUnit(ctx, query, nodes, nil,
			func(n *Technique, e *Unit) { n.Edges.Unit = e }); err != nil {
			return nil, err
		}
	}
	if query := tq.withLessons; query != nil {
		if err := tq.loadLessons(ctx, query, nodes,
			func(n *Technique) { n.Edges.Lessons = []*Lesson{} },
			func(n *Technique, e *Lesson) { n.Edges.Lessons = append(n.Edges.Lessons, e) }); err != nil {
			return nil, err
		}
	}
	if query := tq.withTechniques; query != nil {
		if err := tq.loadTechniques(ctx, query, nodes,
			func(n *Technique) { n.Edges.Techniques = []*Unit{} },
			func(n *Technique, e *Unit) { n.Edges.Techniques = append(n.Edges.Techniques, e) }); err != nil {
			return nil, err
		}
	}
	if query := tq.withLessonTechniques; query != nil {
		if err := tq.loadLessonTechniques(ctx, query, nodes,
			func(n *Technique) { n.Edges.LessonTechniques = []*LessonTechnique{} },
			func(n *Technique, e *LessonTechnique) { n.Edges.LessonTechniques = append(n.Edges.LessonTechniques, e) }); err != nil {
			return nil, err
		}
	}
	if query := tq.withUnitTechniques; query != nil {
		if err := tq.loadUnitTechniques(ctx, query, nodes,
			func(n *Technique) { n.Edges.UnitTechniques = []*UnitTechnique{} },
			func(n *Technique, e *UnitTechnique) { n.Edges.UnitTechniques = append(n.Edges.UnitTechniques, e) }); err != nil {
			return nil, err
		}
	}
	for name, query := range tq.withNamedLessons {
		if err := tq.loadLessons(ctx, query, nodes,
			func(n *Technique) { n.appendNamedLessons(name) },
			func(n *Technique, e *Lesson) { n.appendNamedLessons(name, e) }); err != nil {
			return nil, err
		}
	}
	for name, query := range tq.withNamedTechniques {
		if err := tq.loadTechniques(ctx, query, nodes,
			func(n *Technique) { n.appendNamedTechniques(name) },
			func(n *Technique, e *Unit) { n.appendNamedTechniques(name, e) }); err != nil {
			return nil, err
		}
	}
	for name, query := range tq.withNamedLessonTechniques {
		if err := tq.loadLessonTechniques(ctx, query, nodes,
			func(n *Technique) { n.appendNamedLessonTechniques(name) },
			func(n *Technique, e *LessonTechnique) { n.appendNamedLessonTechniques(name, e) }); err != nil {
			return nil, err
		}
	}
	for name, query := range tq.withNamedUnitTechniques {
		if err := tq.loadUnitTechniques(ctx, query, nodes,
			func(n *Technique) { n.appendNamedUnitTechniques(name) },
			func(n *Technique, e *UnitTechnique) { n.appendNamedUnitTechniques(name, e) }); err != nil {
			return nil, err
		}
	}
	for i := range tq.loadTotal {
		if err := tq.loadTotal[i](ctx, nodes); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

func (tq *TechniqueQuery) loadUnit(ctx context.Context, query *UnitQuery, nodes []*Technique, init func(*Technique), assign func(*Technique, *Unit)) error {
	ids := make([]gqlid.UnitID, 0, len(nodes))
	nodeids := make(map[gqlid.UnitID][]*Technique)
	for i := range nodes {
		fk := nodes[i].UnitID
		if _, ok := nodeids[fk]; !ok {
			ids = append(ids, fk)
		}
		nodeids[fk] = append(nodeids[fk], nodes[i])
	}
	if len(ids) == 0 {
		return nil
	}
	query.Where(unit.IDIn(ids...))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		nodes, ok := nodeids[n.ID]
		if !ok {
			return fmt.Errorf(`unexpected foreign-key "unit_id" returned %v`, n.ID)
		}
		for i := range nodes {
			assign(nodes[i], n)
		}
	}
	return nil
}
func (tq *TechniqueQuery) loadLessons(ctx context.Context, query *LessonQuery, nodes []*Technique, init func(*Technique), assign func(*Technique, *Lesson)) error {
	edgeIDs := make([]driver.Value, len(nodes))
	byID := make(map[gqlid.TechniqueID]*Technique)
	nids := make(map[gqlid.LessonID]map[*Technique]struct{})
	for i, node := range nodes {
		edgeIDs[i] = node.ID
		byID[node.ID] = node
		if init != nil {
			init(node)
		}
	}
	query.Where(func(s *sql.Selector) {
		joinT := sql.Table(technique.LessonsTable)
		s.Join(joinT).On(s.C(lesson.FieldID), joinT.C(technique.LessonsPrimaryKey[0]))
		s.Where(sql.InValues(joinT.C(technique.LessonsPrimaryKey[1]), edgeIDs...))
		columns := s.SelectedColumns()
		s.Select(joinT.C(technique.LessonsPrimaryKey[1]))
		s.AppendSelect(columns...)
		s.SetDistinct(false)
	})
	if err := query.prepareQuery(ctx); err != nil {
		return err
	}
	qr := QuerierFunc(func(ctx context.Context, q Query) (Value, error) {
		return query.sqlAll(ctx, func(_ context.Context, spec *sqlgraph.QuerySpec) {
			assign := spec.Assign
			values := spec.ScanValues
			spec.ScanValues = func(columns []string) ([]any, error) {
				values, err := values(columns[1:])
				if err != nil {
					return nil, err
				}
				return append([]any{new(gqlid.TechniqueID)}, values...), nil
			}
			spec.Assign = func(columns []string, values []any) error {
				outValue := *values[0].(*gqlid.TechniqueID)
				inValue := *values[1].(*gqlid.LessonID)
				if nids[inValue] == nil {
					nids[inValue] = map[*Technique]struct{}{byID[outValue]: {}}
					return assign(columns[1:], values[1:])
				}
				nids[inValue][byID[outValue]] = struct{}{}
				return nil
			}
		})
	})
	neighbors, err := withInterceptors[[]*Lesson](ctx, query, qr, query.inters)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		nodes, ok := nids[n.ID]
		if !ok {
			return fmt.Errorf(`unexpected "lessons" node returned %v`, n.ID)
		}
		for kn := range nodes {
			assign(kn, n)
		}
	}
	return nil
}
func (tq *TechniqueQuery) loadTechniques(ctx context.Context, query *UnitQuery, nodes []*Technique, init func(*Technique), assign func(*Technique, *Unit)) error {
	edgeIDs := make([]driver.Value, len(nodes))
	byID := make(map[gqlid.TechniqueID]*Technique)
	nids := make(map[gqlid.UnitID]map[*Technique]struct{})
	for i, node := range nodes {
		edgeIDs[i] = node.ID
		byID[node.ID] = node
		if init != nil {
			init(node)
		}
	}
	query.Where(func(s *sql.Selector) {
		joinT := sql.Table(technique.TechniquesTable)
		s.Join(joinT).On(s.C(unit.FieldID), joinT.C(technique.TechniquesPrimaryKey[0]))
		s.Where(sql.InValues(joinT.C(technique.TechniquesPrimaryKey[1]), edgeIDs...))
		columns := s.SelectedColumns()
		s.Select(joinT.C(technique.TechniquesPrimaryKey[1]))
		s.AppendSelect(columns...)
		s.SetDistinct(false)
	})
	if err := query.prepareQuery(ctx); err != nil {
		return err
	}
	qr := QuerierFunc(func(ctx context.Context, q Query) (Value, error) {
		return query.sqlAll(ctx, func(_ context.Context, spec *sqlgraph.QuerySpec) {
			assign := spec.Assign
			values := spec.ScanValues
			spec.ScanValues = func(columns []string) ([]any, error) {
				values, err := values(columns[1:])
				if err != nil {
					return nil, err
				}
				return append([]any{new(gqlid.TechniqueID)}, values...), nil
			}
			spec.Assign = func(columns []string, values []any) error {
				outValue := *values[0].(*gqlid.TechniqueID)
				inValue := *values[1].(*gqlid.UnitID)
				if nids[inValue] == nil {
					nids[inValue] = map[*Technique]struct{}{byID[outValue]: {}}
					return assign(columns[1:], values[1:])
				}
				nids[inValue][byID[outValue]] = struct{}{}
				return nil
			}
		})
	})
	neighbors, err := withInterceptors[[]*Unit](ctx, query, qr, query.inters)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		nodes, ok := nids[n.ID]
		if !ok {
			return fmt.Errorf(`unexpected "techniques" node returned %v`, n.ID)
		}
		for kn := range nodes {
			assign(kn, n)
		}
	}
	return nil
}
func (tq *TechniqueQuery) loadLessonTechniques(ctx context.Context, query *LessonTechniqueQuery, nodes []*Technique, init func(*Technique), assign func(*Technique, *LessonTechnique)) error {
	fks := make([]driver.Value, 0, len(nodes))
	nodeids := make(map[gqlid.TechniqueID]*Technique)
	for i := range nodes {
		fks = append(fks, nodes[i].ID)
		nodeids[nodes[i].ID] = nodes[i]
		if init != nil {
			init(nodes[i])
		}
	}
	if len(query.ctx.Fields) > 0 {
		query.ctx.AppendFieldOnce(lessontechnique.FieldTechniqueID)
	}
	query.Where(predicate.LessonTechnique(func(s *sql.Selector) {
		s.Where(sql.InValues(s.C(technique.LessonTechniquesColumn), fks...))
	}))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		fk := n.TechniqueID
		node, ok := nodeids[fk]
		if !ok {
			return fmt.Errorf(`unexpected referenced foreign-key "technique_id" returned %v for node %v`, fk, n)
		}
		assign(node, n)
	}
	return nil
}
func (tq *TechniqueQuery) loadUnitTechniques(ctx context.Context, query *UnitTechniqueQuery, nodes []*Technique, init func(*Technique), assign func(*Technique, *UnitTechnique)) error {
	fks := make([]driver.Value, 0, len(nodes))
	nodeids := make(map[gqlid.TechniqueID]*Technique)
	for i := range nodes {
		fks = append(fks, nodes[i].ID)
		nodeids[nodes[i].ID] = nodes[i]
		if init != nil {
			init(nodes[i])
		}
	}
	if len(query.ctx.Fields) > 0 {
		query.ctx.AppendFieldOnce(unittechnique.FieldTechniqueID)
	}
	query.Where(predicate.UnitTechnique(func(s *sql.Selector) {
		s.Where(sql.InValues(s.C(technique.UnitTechniquesColumn), fks...))
	}))
	neighbors, err := query.All(ctx)
	if err != nil {
		return err
	}
	for _, n := range neighbors {
		fk := n.TechniqueID
		node, ok := nodeids[fk]
		if !ok {
			return fmt.Errorf(`unexpected referenced foreign-key "technique_id" returned %v for node %v`, fk, n)
		}
		assign(node, n)
	}
	return nil
}

func (tq *TechniqueQuery) sqlCount(ctx context.Context) (int, error) {
	_spec := tq.querySpec()
	if len(tq.modifiers) > 0 {
		_spec.Modifiers = tq.modifiers
	}
	_spec.Node.Columns = tq.ctx.Fields
	if len(tq.ctx.Fields) > 0 {
		_spec.Unique = tq.ctx.Unique != nil && *tq.ctx.Unique
	}
	return sqlgraph.CountNodes(ctx, tq.driver, _spec)
}

func (tq *TechniqueQuery) querySpec() *sqlgraph.QuerySpec {
	_spec := sqlgraph.NewQuerySpec(technique.Table, technique.Columns, sqlgraph.NewFieldSpec(technique.FieldID, field.TypeInt64))
	_spec.From = tq.sql
	if unique := tq.ctx.Unique; unique != nil {
		_spec.Unique = *unique
	} else if tq.path != nil {
		_spec.Unique = true
	}
	if fields := tq.ctx.Fields; len(fields) > 0 {
		_spec.Node.Columns = make([]string, 0, len(fields))
		_spec.Node.Columns = append(_spec.Node.Columns, technique.FieldID)
		for i := range fields {
			if fields[i] != technique.FieldID {
				_spec.Node.Columns = append(_spec.Node.Columns, fields[i])
			}
		}
		if tq.withUnit != nil {
			_spec.Node.AddColumnOnce(technique.FieldUnitID)
		}
	}
	if ps := tq.predicates; len(ps) > 0 {
		_spec.Predicate = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	if limit := tq.ctx.Limit; limit != nil {
		_spec.Limit = *limit
	}
	if offset := tq.ctx.Offset; offset != nil {
		_spec.Offset = *offset
	}
	if ps := tq.order; len(ps) > 0 {
		_spec.Order = func(selector *sql.Selector) {
			for i := range ps {
				ps[i](selector)
			}
		}
	}
	return _spec
}

func (tq *TechniqueQuery) sqlQuery(ctx context.Context) *sql.Selector {
	builder := sql.Dialect(tq.driver.Dialect())
	t1 := builder.Table(technique.Table)
	columns := tq.ctx.Fields
	if len(columns) == 0 {
		columns = technique.Columns
	}
	selector := builder.Select(t1.Columns(columns...)...).From(t1)
	if tq.sql != nil {
		selector = tq.sql
		selector.Select(selector.Columns(columns...)...)
	}
	if tq.ctx.Unique != nil && *tq.ctx.Unique {
		selector.Distinct()
	}
	for _, m := range tq.modifiers {
		m(selector)
	}
	for _, p := range tq.predicates {
		p(selector)
	}
	for _, p := range tq.order {
		p(selector)
	}
	if offset := tq.ctx.Offset; offset != nil {
		// limit is mandatory for offset clause. We start
		// with default value, and override it below if needed.
		selector.Offset(*offset).Limit(math.MaxInt32)
	}
	if limit := tq.ctx.Limit; limit != nil {
		selector.Limit(*limit)
	}
	return selector
}

// Modify adds a query modifier for attaching custom logic to queries.
func (tq *TechniqueQuery) Modify(modifiers ...func(s *sql.Selector)) *TechniqueSelect {
	tq.modifiers = append(tq.modifiers, modifiers...)
	return tq.Select()
}

// WithNamedLessons tells the query-builder to eager-load the nodes that are connected to the "lessons"
// edge with the given name. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithNamedLessons(name string, opts ...func(*LessonQuery)) *TechniqueQuery {
	query := (&LessonClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	if tq.withNamedLessons == nil {
		tq.withNamedLessons = make(map[string]*LessonQuery)
	}
	tq.withNamedLessons[name] = query
	return tq
}

// WithNamedTechniques tells the query-builder to eager-load the nodes that are connected to the "techniques"
// edge with the given name. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithNamedTechniques(name string, opts ...func(*UnitQuery)) *TechniqueQuery {
	query := (&UnitClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	if tq.withNamedTechniques == nil {
		tq.withNamedTechniques = make(map[string]*UnitQuery)
	}
	tq.withNamedTechniques[name] = query
	return tq
}

// WithNamedLessonTechniques tells the query-builder to eager-load the nodes that are connected to the "lessonTechniques"
// edge with the given name. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithNamedLessonTechniques(name string, opts ...func(*LessonTechniqueQuery)) *TechniqueQuery {
	query := (&LessonTechniqueClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	if tq.withNamedLessonTechniques == nil {
		tq.withNamedLessonTechniques = make(map[string]*LessonTechniqueQuery)
	}
	tq.withNamedLessonTechniques[name] = query
	return tq
}

// WithNamedUnitTechniques tells the query-builder to eager-load the nodes that are connected to the "unitTechniques"
// edge with the given name. The optional arguments are used to configure the query builder of the edge.
func (tq *TechniqueQuery) WithNamedUnitTechniques(name string, opts ...func(*UnitTechniqueQuery)) *TechniqueQuery {
	query := (&UnitTechniqueClient{config: tq.config}).Query()
	for _, opt := range opts {
		opt(query)
	}
	if tq.withNamedUnitTechniques == nil {
		tq.withNamedUnitTechniques = make(map[string]*UnitTechniqueQuery)
	}
	tq.withNamedUnitTechniques[name] = query
	return tq
}

// TechniqueGroupBy is the group-by builder for Technique entities.
type TechniqueGroupBy struct {
	selector
	build *TechniqueQuery
}

// Aggregate adds the given aggregation functions to the group-by query.
func (tgb *TechniqueGroupBy) Aggregate(fns ...AggregateFunc) *TechniqueGroupBy {
	tgb.fns = append(tgb.fns, fns...)
	return tgb
}

// Scan applies the selector query and scans the result into the given value.
func (tgb *TechniqueGroupBy) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, tgb.build.ctx, "GroupBy")
	if err := tgb.build.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*TechniqueQuery, *TechniqueGroupBy](ctx, tgb.build, tgb, tgb.build.inters, v)
}

func (tgb *TechniqueGroupBy) sqlScan(ctx context.Context, root *TechniqueQuery, v any) error {
	selector := root.sqlQuery(ctx).Select()
	aggregation := make([]string, 0, len(tgb.fns))
	for _, fn := range tgb.fns {
		aggregation = append(aggregation, fn(selector))
	}
	if len(selector.SelectedColumns()) == 0 {
		columns := make([]string, 0, len(*tgb.flds)+len(tgb.fns))
		for _, f := range *tgb.flds {
			columns = append(columns, selector.C(f))
		}
		columns = append(columns, aggregation...)
		selector.Select(columns...)
	}
	selector.GroupBy(selector.Columns(*tgb.flds...)...)
	if err := selector.Err(); err != nil {
		return err
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := tgb.build.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// TechniqueSelect is the builder for selecting fields of Technique entities.
type TechniqueSelect struct {
	*TechniqueQuery
	selector
}

// Aggregate adds the given aggregation functions to the selector query.
func (ts *TechniqueSelect) Aggregate(fns ...AggregateFunc) *TechniqueSelect {
	ts.fns = append(ts.fns, fns...)
	return ts
}

// Scan applies the selector query and scans the result into the given value.
func (ts *TechniqueSelect) Scan(ctx context.Context, v any) error {
	ctx = setContextOp(ctx, ts.ctx, "Select")
	if err := ts.prepareQuery(ctx); err != nil {
		return err
	}
	return scanWithInterceptors[*TechniqueQuery, *TechniqueSelect](ctx, ts.TechniqueQuery, ts, ts.inters, v)
}

func (ts *TechniqueSelect) sqlScan(ctx context.Context, root *TechniqueQuery, v any) error {
	selector := root.sqlQuery(ctx)
	aggregation := make([]string, 0, len(ts.fns))
	for _, fn := range ts.fns {
		aggregation = append(aggregation, fn(selector))
	}
	switch n := len(*ts.selector.flds); {
	case n == 0 && len(aggregation) > 0:
		selector.Select(aggregation...)
	case n != 0 && len(aggregation) > 0:
		selector.AppendSelect(aggregation...)
	}
	rows := &sql.Rows{}
	query, args := selector.Query()
	if err := ts.driver.Query(ctx, query, args, rows); err != nil {
		return err
	}
	defer rows.Close()
	return sql.ScanSlice(rows, v)
}

// Modify adds a query modifier for attaching custom logic to queries.
func (ts *TechniqueSelect) Modify(modifiers ...func(s *sql.Selector)) *TechniqueSelect {
	ts.modifiers = append(ts.modifiers, modifiers...)
	return ts
}
