// Code generated by ent, DO NOT EDIT.

package authtoken

import (
	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
)

const (
	// Label holds the string label denoting the authtoken type in the database.
	Label = "auth_token"
	// FieldID holds the string denoting the id field in the database.
	FieldID = "id"
	// FieldJwtID holds the string denoting the jwt_id field in the database.
	FieldJwtID = "jwt_id"
	// FieldUserID holds the string denoting the user_id field in the database.
	FieldUserID = "user_id"
	// FieldIssuedAt holds the string denoting the issued_at field in the database.
	FieldIssuedAt = "issued_at"
	// FieldExpiresAt holds the string denoting the expires_at field in the database.
	FieldExpiresAt = "expires_at"
	// EdgeUser holds the string denoting the user edge name in mutations.
	EdgeUser = "user"
	// Table holds the table name of the authtoken in the database.
	Table = "auth_tokens"
	// UserTable is the table that holds the user relation/edge.
	UserTable = "auth_tokens"
	// UserInverseTable is the table name for the User entity.
	// It exists in this package in order to avoid circular dependency with the "user" package.
	UserInverseTable = "users"
	// UserColumn is the table column denoting the user relation/edge.
	UserColumn = "user_id"
)

// Columns holds all SQL columns for authtoken fields.
var Columns = []string{
	FieldID,
	FieldJwtID,
	FieldUserID,
	FieldIssuedAt,
	FieldExpiresAt,
}

// ValidColumn reports if the column name is valid (part of the table columns).
func ValidColumn(column string) bool {
	for i := range Columns {
		if column == Columns[i] {
			return true
		}
	}
	return false
}

var (
	// JwtIDValidator is a validator for the "jwt_id" field. It is called by the builders before save.
	JwtIDValidator func(string) error
)

// OrderOption defines the ordering options for the AuthToken queries.
type OrderOption func(*sql.Selector)

// ByID orders the results by the id field.
func ByID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldID, opts...).ToFunc()
}

// ByJwtID orders the results by the jwt_id field.
func ByJwtID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldJwtID, opts...).ToFunc()
}

// ByUserID orders the results by the user_id field.
func ByUserID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldUserID, opts...).ToFunc()
}

// ByIssuedAt orders the results by the issued_at field.
func ByIssuedAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldIssuedAt, opts...).ToFunc()
}

// ByExpiresAt orders the results by the expires_at field.
func ByExpiresAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldExpiresAt, opts...).ToFunc()
}

// ByUserField orders the results by user field.
func ByUserField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newUserStep(), sql.OrderByField(field, opts...))
	}
}
func newUserStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(UserInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, false, UserTable, UserColumn),
	)
}
