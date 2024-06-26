// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"

	"github.com/99designs/gqlgen/graphql"
)

func (c *Content) Episodes(
	ctx context.Context, after *Cursor, first *int, before *Cursor, last *int, orderBy *ContentEpisodeOrder, where *ContentEpisodeWhereInput,
) (*ContentEpisodeConnection, error) {
	opts := []ContentEpisodePaginateOption{
		WithContentEpisodeOrder(orderBy),
		WithContentEpisodeFilter(where.Filter),
	}
	alias := graphql.GetFieldContext(ctx).Field.Alias
	totalCount, hasTotalCount := c.Edges.totalCount[0][alias]
	if nodes, err := c.NamedEpisodes(alias); err == nil || hasTotalCount {
		pager, err := newContentEpisodePager(opts, last != nil)
		if err != nil {
			return nil, err
		}
		conn := &ContentEpisodeConnection{Edges: []*ContentEpisodeEdge{}, TotalCount: totalCount}
		conn.build(nodes, pager, after, first, before, last)
		return conn, nil
	}
	return c.QueryEpisodes().Paginate(ctx, after, first, before, last, opts...)
}

func (ce *ContentEpisode) Content(ctx context.Context) (*Content, error) {
	result, err := ce.Edges.ContentOrErr()
	if IsNotLoaded(err) {
		result, err = ce.QueryContent().Only(ctx)
	}
	return result, err
}

func (cp *ContentProgress) User(ctx context.Context) (*User, error) {
	result, err := cp.Edges.UserOrErr()
	if IsNotLoaded(err) {
		result, err = cp.QueryUser().Only(ctx)
	}
	return result, err
}

func (cp *ContentProgress) Content(ctx context.Context) (*Content, error) {
	result, err := cp.Edges.ContentOrErr()
	if IsNotLoaded(err) {
		result, err = cp.QueryContent().Only(ctx)
	}
	return result, err
}

func (cp *ContentProgress) Episode(ctx context.Context) (*ContentEpisode, error) {
	result, err := cp.Edges.EpisodeOrErr()
	if IsNotLoaded(err) {
		result, err = cp.QueryEpisode().Only(ctx)
	}
	return result, err
}

func (c *Course) Units(
	ctx context.Context, after *Cursor, first *int, before *Cursor, last *int, orderBy *UnitOrder, where *UnitWhereInput,
) (*UnitConnection, error) {
	opts := []UnitPaginateOption{
		WithUnitOrder(orderBy),
		WithUnitFilter(where.Filter),
	}
	alias := graphql.GetFieldContext(ctx).Field.Alias
	totalCount, hasTotalCount := c.Edges.totalCount[0][alias]
	if nodes, err := c.NamedUnits(alias); err == nil || hasTotalCount {
		pager, err := newUnitPager(opts, last != nil)
		if err != nil {
			return nil, err
		}
		conn := &UnitConnection{Edges: []*UnitEdge{}, TotalCount: totalCount}
		conn.build(nodes, pager, after, first, before, last)
		return conn, nil
	}
	return c.QueryUnits().Paginate(ctx, after, first, before, last, opts...)
}

func (jr *JournalRecord) User(ctx context.Context) (*User, error) {
	result, err := jr.Edges.UserOrErr()
	if IsNotLoaded(err) {
		result, err = jr.QueryUser().Only(ctx)
	}
	return result, err
}

func (jr *JournalRecord) Lesson(ctx context.Context) (*Lesson, error) {
	result, err := jr.Edges.LessonOrErr()
	if IsNotLoaded(err) {
		result, err = jr.QueryLesson().Only(ctx)
	}
	return result, MaskNotFound(err)
}

func (l *Lesson) Unit(ctx context.Context) (*Unit, error) {
	result, err := l.Edges.UnitOrErr()
	if IsNotLoaded(err) {
		result, err = l.QueryUnit().Only(ctx)
	}
	return result, err
}

func (la *LessonAudio) Lesson(ctx context.Context) (*Lesson, error) {
	result, err := la.Edges.LessonOrErr()
	if IsNotLoaded(err) {
		result, err = la.QueryLesson().Only(ctx)
	}
	return result, err
}

func (t *Technique) Unit(ctx context.Context) (*Unit, error) {
	result, err := t.Edges.UnitOrErr()
	if IsNotLoaded(err) {
		result, err = t.QueryUnit().Only(ctx)
	}
	return result, err
}

func (t *Technique) Lessons(ctx context.Context) (result []*Lesson, err error) {
	if fc := graphql.GetFieldContext(ctx); fc != nil && fc.Field.Alias != "" {
		result, err = t.NamedLessons(graphql.GetFieldContext(ctx).Field.Alias)
	} else {
		result, err = t.Edges.LessonsOrErr()
	}
	if IsNotLoaded(err) {
		result, err = t.QueryLessons().All(ctx)
	}
	return result, err
}

func (t *Technique) Techniques(ctx context.Context) (result []*Unit, err error) {
	if fc := graphql.GetFieldContext(ctx); fc != nil && fc.Field.Alias != "" {
		result, err = t.NamedTechniques(graphql.GetFieldContext(ctx).Field.Alias)
	} else {
		result, err = t.Edges.TechniquesOrErr()
	}
	if IsNotLoaded(err) {
		result, err = t.QueryTechniques().All(ctx)
	}
	return result, err
}

func (u *Unit) Course(ctx context.Context) (*Course, error) {
	result, err := u.Edges.CourseOrErr()
	if IsNotLoaded(err) {
		result, err = u.QueryCourse().Only(ctx)
	}
	return result, err
}

func (u *Unit) Lessons(
	ctx context.Context, after *Cursor, first *int, before *Cursor, last *int, orderBy *LessonOrder, where *LessonWhereInput,
) (*LessonConnection, error) {
	opts := []LessonPaginateOption{
		WithLessonOrder(orderBy),
		WithLessonFilter(where.Filter),
	}
	alias := graphql.GetFieldContext(ctx).Field.Alias
	totalCount, hasTotalCount := u.Edges.totalCount[1][alias]
	if nodes, err := u.NamedLessons(alias); err == nil || hasTotalCount {
		pager, err := newLessonPager(opts, last != nil)
		if err != nil {
			return nil, err
		}
		conn := &LessonConnection{Edges: []*LessonEdge{}, TotalCount: totalCount}
		conn.build(nodes, pager, after, first, before, last)
		return conn, nil
	}
	return u.QueryLessons().Paginate(ctx, after, first, before, last, opts...)
}

func (up *UserProgress) User(ctx context.Context) (*User, error) {
	result, err := up.Edges.UserOrErr()
	if IsNotLoaded(err) {
		result, err = up.QueryUser().Only(ctx)
	}
	return result, err
}

func (up *UserProgress) Course(ctx context.Context) (*Course, error) {
	result, err := up.Edges.CourseOrErr()
	if IsNotLoaded(err) {
		result, err = up.QueryCourse().Only(ctx)
	}
	return result, err
}

func (up *UserProgress) Unit(ctx context.Context) (*Unit, error) {
	result, err := up.Edges.UnitOrErr()
	if IsNotLoaded(err) {
		result, err = up.QueryUnit().Only(ctx)
	}
	return result, err
}

func (up *UserProgress) Lesson(ctx context.Context) (*Lesson, error) {
	result, err := up.Edges.LessonOrErr()
	if IsNotLoaded(err) {
		result, err = up.QueryLesson().Only(ctx)
	}
	return result, err
}
