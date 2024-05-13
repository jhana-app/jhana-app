// Code generated by ent, DO NOT EDIT.

package contentprogress

import (
	"time"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
	"github.com/jhana-app/jhana-app/ent/property"
)

// ID filters vertices based on their ID field.
func ID(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldID, id))
}

// IDEQ applies the EQ predicate on the ID field.
func IDEQ(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldID, id))
}

// IDNEQ applies the NEQ predicate on the ID field.
func IDNEQ(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldID, id))
}

// IDIn applies the In predicate on the ID field.
func IDIn(ids ...gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldID, ids...))
}

// IDNotIn applies the NotIn predicate on the ID field.
func IDNotIn(ids ...gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldID, ids...))
}

// IDGT applies the GT predicate on the ID field.
func IDGT(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGT(FieldID, id))
}

// IDGTE applies the GTE predicate on the ID field.
func IDGTE(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGTE(FieldID, id))
}

// IDLT applies the LT predicate on the ID field.
func IDLT(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLT(FieldID, id))
}

// IDLTE applies the LTE predicate on the ID field.
func IDLTE(id gqlid.ContentProgressID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLTE(FieldID, id))
}

// UserID applies equality check predicate on the "user_id" field. It's identical to UserIDEQ.
func UserID(v gqlid.UserID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldUserID, v))
}

// ContentID applies equality check predicate on the "content_id" field. It's identical to ContentIDEQ.
func ContentID(v gqlid.ContentID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldContentID, v))
}

// EpisodeID applies equality check predicate on the "episode_id" field. It's identical to EpisodeIDEQ.
func EpisodeID(v gqlid.ContentEpisodeID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldEpisodeID, v))
}

// Progress applies equality check predicate on the "progress" field. It's identical to ProgressEQ.
func Progress(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldProgress, v))
}

// FinishedAt applies equality check predicate on the "finishedAt" field. It's identical to FinishedAtEQ.
func FinishedAt(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldFinishedAt, v))
}

// CreatedAt applies equality check predicate on the "createdAt" field. It's identical to CreatedAtEQ.
func CreatedAt(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldCreatedAt, v))
}

// UpdatedAt applies equality check predicate on the "updatedAt" field. It's identical to UpdatedAtEQ.
func UpdatedAt(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldUpdatedAt, v))
}

// UserIDEQ applies the EQ predicate on the "user_id" field.
func UserIDEQ(v gqlid.UserID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldUserID, v))
}

// UserIDNEQ applies the NEQ predicate on the "user_id" field.
func UserIDNEQ(v gqlid.UserID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldUserID, v))
}

// UserIDIn applies the In predicate on the "user_id" field.
func UserIDIn(vs ...gqlid.UserID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldUserID, vs...))
}

// UserIDNotIn applies the NotIn predicate on the "user_id" field.
func UserIDNotIn(vs ...gqlid.UserID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldUserID, vs...))
}

// ContentIDEQ applies the EQ predicate on the "content_id" field.
func ContentIDEQ(v gqlid.ContentID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldContentID, v))
}

// ContentIDNEQ applies the NEQ predicate on the "content_id" field.
func ContentIDNEQ(v gqlid.ContentID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldContentID, v))
}

// ContentIDIn applies the In predicate on the "content_id" field.
func ContentIDIn(vs ...gqlid.ContentID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldContentID, vs...))
}

// ContentIDNotIn applies the NotIn predicate on the "content_id" field.
func ContentIDNotIn(vs ...gqlid.ContentID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldContentID, vs...))
}

// EpisodeIDEQ applies the EQ predicate on the "episode_id" field.
func EpisodeIDEQ(v gqlid.ContentEpisodeID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldEpisodeID, v))
}

// EpisodeIDNEQ applies the NEQ predicate on the "episode_id" field.
func EpisodeIDNEQ(v gqlid.ContentEpisodeID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldEpisodeID, v))
}

// EpisodeIDIn applies the In predicate on the "episode_id" field.
func EpisodeIDIn(vs ...gqlid.ContentEpisodeID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldEpisodeID, vs...))
}

// EpisodeIDNotIn applies the NotIn predicate on the "episode_id" field.
func EpisodeIDNotIn(vs ...gqlid.ContentEpisodeID) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldEpisodeID, vs...))
}

// ContentTypeEQ applies the EQ predicate on the "content_type" field.
func ContentTypeEQ(v property.ContentType) predicate.ContentProgress {
	vc := v
	return predicate.ContentProgress(sql.FieldEQ(FieldContentType, vc))
}

// ContentTypeNEQ applies the NEQ predicate on the "content_type" field.
func ContentTypeNEQ(v property.ContentType) predicate.ContentProgress {
	vc := v
	return predicate.ContentProgress(sql.FieldNEQ(FieldContentType, vc))
}

// ContentTypeIn applies the In predicate on the "content_type" field.
func ContentTypeIn(vs ...property.ContentType) predicate.ContentProgress {
	v := make([]any, len(vs))
	for i := range v {
		v[i] = vs[i]
	}
	return predicate.ContentProgress(sql.FieldIn(FieldContentType, v...))
}

// ContentTypeNotIn applies the NotIn predicate on the "content_type" field.
func ContentTypeNotIn(vs ...property.ContentType) predicate.ContentProgress {
	v := make([]any, len(vs))
	for i := range v {
		v[i] = vs[i]
	}
	return predicate.ContentProgress(sql.FieldNotIn(FieldContentType, v...))
}

// ProgressEQ applies the EQ predicate on the "progress" field.
func ProgressEQ(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldProgress, v))
}

// ProgressNEQ applies the NEQ predicate on the "progress" field.
func ProgressNEQ(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldProgress, v))
}

// ProgressIn applies the In predicate on the "progress" field.
func ProgressIn(vs ...int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldProgress, vs...))
}

// ProgressNotIn applies the NotIn predicate on the "progress" field.
func ProgressNotIn(vs ...int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldProgress, vs...))
}

// ProgressGT applies the GT predicate on the "progress" field.
func ProgressGT(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGT(FieldProgress, v))
}

// ProgressGTE applies the GTE predicate on the "progress" field.
func ProgressGTE(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGTE(FieldProgress, v))
}

// ProgressLT applies the LT predicate on the "progress" field.
func ProgressLT(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLT(FieldProgress, v))
}

// ProgressLTE applies the LTE predicate on the "progress" field.
func ProgressLTE(v int64) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLTE(FieldProgress, v))
}

// FinishedAtEQ applies the EQ predicate on the "finishedAt" field.
func FinishedAtEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldFinishedAt, v))
}

// FinishedAtNEQ applies the NEQ predicate on the "finishedAt" field.
func FinishedAtNEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldFinishedAt, v))
}

// FinishedAtIn applies the In predicate on the "finishedAt" field.
func FinishedAtIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldFinishedAt, vs...))
}

// FinishedAtNotIn applies the NotIn predicate on the "finishedAt" field.
func FinishedAtNotIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldFinishedAt, vs...))
}

// FinishedAtGT applies the GT predicate on the "finishedAt" field.
func FinishedAtGT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGT(FieldFinishedAt, v))
}

// FinishedAtGTE applies the GTE predicate on the "finishedAt" field.
func FinishedAtGTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGTE(FieldFinishedAt, v))
}

// FinishedAtLT applies the LT predicate on the "finishedAt" field.
func FinishedAtLT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLT(FieldFinishedAt, v))
}

// FinishedAtLTE applies the LTE predicate on the "finishedAt" field.
func FinishedAtLTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLTE(FieldFinishedAt, v))
}

// FinishedAtIsNil applies the IsNil predicate on the "finishedAt" field.
func FinishedAtIsNil() predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIsNull(FieldFinishedAt))
}

// FinishedAtNotNil applies the NotNil predicate on the "finishedAt" field.
func FinishedAtNotNil() predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotNull(FieldFinishedAt))
}

// CreatedAtEQ applies the EQ predicate on the "createdAt" field.
func CreatedAtEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldCreatedAt, v))
}

// CreatedAtNEQ applies the NEQ predicate on the "createdAt" field.
func CreatedAtNEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldCreatedAt, v))
}

// CreatedAtIn applies the In predicate on the "createdAt" field.
func CreatedAtIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldCreatedAt, vs...))
}

// CreatedAtNotIn applies the NotIn predicate on the "createdAt" field.
func CreatedAtNotIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldCreatedAt, vs...))
}

// CreatedAtGT applies the GT predicate on the "createdAt" field.
func CreatedAtGT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGT(FieldCreatedAt, v))
}

// CreatedAtGTE applies the GTE predicate on the "createdAt" field.
func CreatedAtGTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGTE(FieldCreatedAt, v))
}

// CreatedAtLT applies the LT predicate on the "createdAt" field.
func CreatedAtLT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLT(FieldCreatedAt, v))
}

// CreatedAtLTE applies the LTE predicate on the "createdAt" field.
func CreatedAtLTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLTE(FieldCreatedAt, v))
}

// UpdatedAtEQ applies the EQ predicate on the "updatedAt" field.
func UpdatedAtEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldEQ(FieldUpdatedAt, v))
}

// UpdatedAtNEQ applies the NEQ predicate on the "updatedAt" field.
func UpdatedAtNEQ(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNEQ(FieldUpdatedAt, v))
}

// UpdatedAtIn applies the In predicate on the "updatedAt" field.
func UpdatedAtIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldIn(FieldUpdatedAt, vs...))
}

// UpdatedAtNotIn applies the NotIn predicate on the "updatedAt" field.
func UpdatedAtNotIn(vs ...time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldNotIn(FieldUpdatedAt, vs...))
}

// UpdatedAtGT applies the GT predicate on the "updatedAt" field.
func UpdatedAtGT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGT(FieldUpdatedAt, v))
}

// UpdatedAtGTE applies the GTE predicate on the "updatedAt" field.
func UpdatedAtGTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldGTE(FieldUpdatedAt, v))
}

// UpdatedAtLT applies the LT predicate on the "updatedAt" field.
func UpdatedAtLT(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLT(FieldUpdatedAt, v))
}

// UpdatedAtLTE applies the LTE predicate on the "updatedAt" field.
func UpdatedAtLTE(v time.Time) predicate.ContentProgress {
	return predicate.ContentProgress(sql.FieldLTE(FieldUpdatedAt, v))
}

// HasUser applies the HasEdge predicate on the "user" edge.
func HasUser() predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, UserTable, UserColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasUserWith applies the HasEdge predicate on the "user" edge with a given conditions (other predicates).
func HasUserWith(preds ...predicate.User) predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := newUserStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasContent applies the HasEdge predicate on the "content" edge.
func HasContent() predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, ContentTable, ContentColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasContentWith applies the HasEdge predicate on the "content" edge with a given conditions (other predicates).
func HasContentWith(preds ...predicate.Content) predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := newContentStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasEpisode applies the HasEdge predicate on the "episode" edge.
func HasEpisode() predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, EpisodeTable, EpisodeColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasEpisodeWith applies the HasEdge predicate on the "episode" edge with a given conditions (other predicates).
func HasEpisodeWith(preds ...predicate.ContentEpisode) predicate.ContentProgress {
	return predicate.ContentProgress(func(s *sql.Selector) {
		step := newEpisodeStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// And groups predicates with the AND operator between them.
func And(predicates ...predicate.ContentProgress) predicate.ContentProgress {
	return predicate.ContentProgress(sql.AndPredicates(predicates...))
}

// Or groups predicates with the OR operator between them.
func Or(predicates ...predicate.ContentProgress) predicate.ContentProgress {
	return predicate.ContentProgress(sql.OrPredicates(predicates...))
}

// Not applies the not operator on the given predicate.
func Not(p predicate.ContentProgress) predicate.ContentProgress {
	return predicate.ContentProgress(sql.NotPredicates(p))
}
