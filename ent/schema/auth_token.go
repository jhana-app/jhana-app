package schema

import (
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/dialect/entsql"
	"entgo.io/ent/schema"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/jhana-app/jhana-app/ent/gqlid"
)

// AuthToken holds the schema definition for the AuthToken entity.
// We use AuthToken to store and rotate refresh tokens.
type AuthToken struct {
	ent.Schema
}

// Fields of the AuthToken.
func (AuthToken) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.AuthTokenID{}),
		field.String("jwt_id").
			Immutable().
			NotEmpty().
			Sensitive().
			Unique(),
		field.Int64("user_id").GoType(gqlid.UserID{}).Immutable(),
		field.Time("issued_at").Immutable(),
		field.Time("expires_at").Immutable(),
	}
}

func (AuthToken) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Field("user_id").
			Unique().
			Required().
			Immutable().
			Annotations(entsql.OnDelete(entsql.Cascade)), // delete user tokens when user is deleted
	}
}

func (AuthToken) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.Skip(),
	}
}

// indexes

// Indexes of the AuthToken.
func (AuthToken) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("user_id"),
		index.Fields("expires_at"),
	}
}
