// Code generated by ent, DO NOT EDIT.

package authtoken

import (
	"time"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// ID filters vertices based on their ID field.
func ID(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldID, id))
}

// IDEQ applies the EQ predicate on the ID field.
func IDEQ(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldID, id))
}

// IDNEQ applies the NEQ predicate on the ID field.
func IDNEQ(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNEQ(FieldID, id))
}

// IDIn applies the In predicate on the ID field.
func IDIn(ids ...gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldIn(FieldID, ids...))
}

// IDNotIn applies the NotIn predicate on the ID field.
func IDNotIn(ids ...gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNotIn(FieldID, ids...))
}

// IDGT applies the GT predicate on the ID field.
func IDGT(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGT(FieldID, id))
}

// IDGTE applies the GTE predicate on the ID field.
func IDGTE(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGTE(FieldID, id))
}

// IDLT applies the LT predicate on the ID field.
func IDLT(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLT(FieldID, id))
}

// IDLTE applies the LTE predicate on the ID field.
func IDLTE(id gqlid.AuthTokenID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLTE(FieldID, id))
}

// JwtID applies equality check predicate on the "jwt_id" field. It's identical to JwtIDEQ.
func JwtID(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldJwtID, v))
}

// UserID applies equality check predicate on the "user_id" field. It's identical to UserIDEQ.
func UserID(v gqlid.UserID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldUserID, v))
}

// IssuedAt applies equality check predicate on the "issued_at" field. It's identical to IssuedAtEQ.
func IssuedAt(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldIssuedAt, v))
}

// ExpiresAt applies equality check predicate on the "expires_at" field. It's identical to ExpiresAtEQ.
func ExpiresAt(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldExpiresAt, v))
}

// JwtIDEQ applies the EQ predicate on the "jwt_id" field.
func JwtIDEQ(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldJwtID, v))
}

// JwtIDNEQ applies the NEQ predicate on the "jwt_id" field.
func JwtIDNEQ(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNEQ(FieldJwtID, v))
}

// JwtIDIn applies the In predicate on the "jwt_id" field.
func JwtIDIn(vs ...string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldIn(FieldJwtID, vs...))
}

// JwtIDNotIn applies the NotIn predicate on the "jwt_id" field.
func JwtIDNotIn(vs ...string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNotIn(FieldJwtID, vs...))
}

// JwtIDGT applies the GT predicate on the "jwt_id" field.
func JwtIDGT(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGT(FieldJwtID, v))
}

// JwtIDGTE applies the GTE predicate on the "jwt_id" field.
func JwtIDGTE(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGTE(FieldJwtID, v))
}

// JwtIDLT applies the LT predicate on the "jwt_id" field.
func JwtIDLT(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLT(FieldJwtID, v))
}

// JwtIDLTE applies the LTE predicate on the "jwt_id" field.
func JwtIDLTE(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLTE(FieldJwtID, v))
}

// JwtIDContains applies the Contains predicate on the "jwt_id" field.
func JwtIDContains(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldContains(FieldJwtID, v))
}

// JwtIDHasPrefix applies the HasPrefix predicate on the "jwt_id" field.
func JwtIDHasPrefix(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldHasPrefix(FieldJwtID, v))
}

// JwtIDHasSuffix applies the HasSuffix predicate on the "jwt_id" field.
func JwtIDHasSuffix(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldHasSuffix(FieldJwtID, v))
}

// JwtIDEqualFold applies the EqualFold predicate on the "jwt_id" field.
func JwtIDEqualFold(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEqualFold(FieldJwtID, v))
}

// JwtIDContainsFold applies the ContainsFold predicate on the "jwt_id" field.
func JwtIDContainsFold(v string) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldContainsFold(FieldJwtID, v))
}

// UserIDEQ applies the EQ predicate on the "user_id" field.
func UserIDEQ(v gqlid.UserID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldUserID, v))
}

// UserIDNEQ applies the NEQ predicate on the "user_id" field.
func UserIDNEQ(v gqlid.UserID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNEQ(FieldUserID, v))
}

// UserIDIn applies the In predicate on the "user_id" field.
func UserIDIn(vs ...gqlid.UserID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldIn(FieldUserID, vs...))
}

// UserIDNotIn applies the NotIn predicate on the "user_id" field.
func UserIDNotIn(vs ...gqlid.UserID) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNotIn(FieldUserID, vs...))
}

// IssuedAtEQ applies the EQ predicate on the "issued_at" field.
func IssuedAtEQ(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldIssuedAt, v))
}

// IssuedAtNEQ applies the NEQ predicate on the "issued_at" field.
func IssuedAtNEQ(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNEQ(FieldIssuedAt, v))
}

// IssuedAtIn applies the In predicate on the "issued_at" field.
func IssuedAtIn(vs ...time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldIn(FieldIssuedAt, vs...))
}

// IssuedAtNotIn applies the NotIn predicate on the "issued_at" field.
func IssuedAtNotIn(vs ...time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNotIn(FieldIssuedAt, vs...))
}

// IssuedAtGT applies the GT predicate on the "issued_at" field.
func IssuedAtGT(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGT(FieldIssuedAt, v))
}

// IssuedAtGTE applies the GTE predicate on the "issued_at" field.
func IssuedAtGTE(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGTE(FieldIssuedAt, v))
}

// IssuedAtLT applies the LT predicate on the "issued_at" field.
func IssuedAtLT(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLT(FieldIssuedAt, v))
}

// IssuedAtLTE applies the LTE predicate on the "issued_at" field.
func IssuedAtLTE(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLTE(FieldIssuedAt, v))
}

// ExpiresAtEQ applies the EQ predicate on the "expires_at" field.
func ExpiresAtEQ(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldEQ(FieldExpiresAt, v))
}

// ExpiresAtNEQ applies the NEQ predicate on the "expires_at" field.
func ExpiresAtNEQ(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNEQ(FieldExpiresAt, v))
}

// ExpiresAtIn applies the In predicate on the "expires_at" field.
func ExpiresAtIn(vs ...time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldIn(FieldExpiresAt, vs...))
}

// ExpiresAtNotIn applies the NotIn predicate on the "expires_at" field.
func ExpiresAtNotIn(vs ...time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldNotIn(FieldExpiresAt, vs...))
}

// ExpiresAtGT applies the GT predicate on the "expires_at" field.
func ExpiresAtGT(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGT(FieldExpiresAt, v))
}

// ExpiresAtGTE applies the GTE predicate on the "expires_at" field.
func ExpiresAtGTE(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldGTE(FieldExpiresAt, v))
}

// ExpiresAtLT applies the LT predicate on the "expires_at" field.
func ExpiresAtLT(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLT(FieldExpiresAt, v))
}

// ExpiresAtLTE applies the LTE predicate on the "expires_at" field.
func ExpiresAtLTE(v time.Time) predicate.AuthToken {
	return predicate.AuthToken(sql.FieldLTE(FieldExpiresAt, v))
}

// HasUser applies the HasEdge predicate on the "user" edge.
func HasUser() predicate.AuthToken {
	return predicate.AuthToken(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, UserTable, UserColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasUserWith applies the HasEdge predicate on the "user" edge with a given conditions (other predicates).
func HasUserWith(preds ...predicate.User) predicate.AuthToken {
	return predicate.AuthToken(func(s *sql.Selector) {
		step := newUserStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// And groups predicates with the AND operator between them.
func And(predicates ...predicate.AuthToken) predicate.AuthToken {
	return predicate.AuthToken(sql.AndPredicates(predicates...))
}

// Or groups predicates with the OR operator between them.
func Or(predicates ...predicate.AuthToken) predicate.AuthToken {
	return predicate.AuthToken(sql.OrPredicates(predicates...))
}

// Not applies the not operator on the given predicate.
func Not(p predicate.AuthToken) predicate.AuthToken {
	return predicate.AuthToken(sql.NotPredicates(p))
}
