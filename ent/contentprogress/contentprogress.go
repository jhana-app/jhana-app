// Code generated by ent, DO NOT EDIT.

package contentprogress

import (
	"fmt"
	"time"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/99designs/gqlgen/graphql"
	"github.com/jhana-app/jhana-app/ent/property"
)

const (
	// Label holds the string label denoting the contentprogress type in the database.
	Label = "content_progress"
	// FieldID holds the string denoting the id field in the database.
	FieldID = "id"
	// FieldUserID holds the string denoting the user_id field in the database.
	FieldUserID = "user_id"
	// FieldContentID holds the string denoting the content_id field in the database.
	FieldContentID = "content_id"
	// FieldEpisodeID holds the string denoting the episode_id field in the database.
	FieldEpisodeID = "episode_id"
	// FieldContentType holds the string denoting the content_type field in the database.
	FieldContentType = "content_type"
	// FieldProgress holds the string denoting the progress field in the database.
	FieldProgress = "progress"
	// FieldFinishedAt holds the string denoting the finishedat field in the database.
	FieldFinishedAt = "finished_at"
	// FieldCreatedAt holds the string denoting the createdat field in the database.
	FieldCreatedAt = "created_at"
	// FieldUpdatedAt holds the string denoting the updatedat field in the database.
	FieldUpdatedAt = "updated_at"
	// EdgeUser holds the string denoting the user edge name in mutations.
	EdgeUser = "user"
	// EdgeContent holds the string denoting the content edge name in mutations.
	EdgeContent = "content"
	// EdgeEpisode holds the string denoting the episode edge name in mutations.
	EdgeEpisode = "episode"
	// Table holds the table name of the contentprogress in the database.
	Table = "content_progresses"
	// UserTable is the table that holds the user relation/edge.
	UserTable = "content_progresses"
	// UserInverseTable is the table name for the User entity.
	// It exists in this package in order to avoid circular dependency with the "user" package.
	UserInverseTable = "users"
	// UserColumn is the table column denoting the user relation/edge.
	UserColumn = "user_id"
	// ContentTable is the table that holds the content relation/edge.
	ContentTable = "content_progresses"
	// ContentInverseTable is the table name for the Content entity.
	// It exists in this package in order to avoid circular dependency with the "content" package.
	ContentInverseTable = "contents"
	// ContentColumn is the table column denoting the content relation/edge.
	ContentColumn = "content_id"
	// EpisodeTable is the table that holds the episode relation/edge.
	EpisodeTable = "content_progresses"
	// EpisodeInverseTable is the table name for the ContentEpisode entity.
	// It exists in this package in order to avoid circular dependency with the "contentepisode" package.
	EpisodeInverseTable = "content_episodes"
	// EpisodeColumn is the table column denoting the episode relation/edge.
	EpisodeColumn = "episode_id"
)

// Columns holds all SQL columns for contentprogress fields.
var Columns = []string{
	FieldID,
	FieldUserID,
	FieldContentID,
	FieldEpisodeID,
	FieldContentType,
	FieldProgress,
	FieldFinishedAt,
	FieldCreatedAt,
	FieldUpdatedAt,
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
	// DefaultProgress holds the default value on creation for the "progress" field.
	DefaultProgress int64
	// DefaultCreatedAt holds the default value on creation for the "createdAt" field.
	DefaultCreatedAt func() time.Time
	// DefaultUpdatedAt holds the default value on creation for the "updatedAt" field.
	DefaultUpdatedAt func() time.Time
)

// ContentTypeValidator is a validator for the "content_type" field enum values. It is called by the builders before save.
func ContentTypeValidator(ct property.ContentType) error {
	switch ct {
	case "audio", "video", "text":
		return nil
	default:
		return fmt.Errorf("contentprogress: invalid enum value for content_type field: %q", ct)
	}
}

// OrderOption defines the ordering options for the ContentProgress queries.
type OrderOption func(*sql.Selector)

// ByID orders the results by the id field.
func ByID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldID, opts...).ToFunc()
}

// ByUserID orders the results by the user_id field.
func ByUserID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldUserID, opts...).ToFunc()
}

// ByContentID orders the results by the content_id field.
func ByContentID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldContentID, opts...).ToFunc()
}

// ByEpisodeID orders the results by the episode_id field.
func ByEpisodeID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldEpisodeID, opts...).ToFunc()
}

// ByContentType orders the results by the content_type field.
func ByContentType(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldContentType, opts...).ToFunc()
}

// ByProgress orders the results by the progress field.
func ByProgress(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldProgress, opts...).ToFunc()
}

// ByFinishedAt orders the results by the finishedAt field.
func ByFinishedAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldFinishedAt, opts...).ToFunc()
}

// ByCreatedAt orders the results by the createdAt field.
func ByCreatedAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldCreatedAt, opts...).ToFunc()
}

// ByUpdatedAt orders the results by the updatedAt field.
func ByUpdatedAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldUpdatedAt, opts...).ToFunc()
}

// ByUserField orders the results by user field.
func ByUserField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newUserStep(), sql.OrderByField(field, opts...))
	}
}

// ByContentField orders the results by content field.
func ByContentField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newContentStep(), sql.OrderByField(field, opts...))
	}
}

// ByEpisodeField orders the results by episode field.
func ByEpisodeField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newEpisodeStep(), sql.OrderByField(field, opts...))
	}
}
func newUserStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(UserInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, false, UserTable, UserColumn),
	)
}
func newContentStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(ContentInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, false, ContentTable, ContentColumn),
	)
}
func newEpisodeStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(EpisodeInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, false, EpisodeTable, EpisodeColumn),
	)
}

var (
	// property.ContentType must implement graphql.Marshaler.
	_ graphql.Marshaler = (*property.ContentType)(nil)
	// property.ContentType must implement graphql.Unmarshaler.
	_ graphql.Unmarshaler = (*property.ContentType)(nil)
)
