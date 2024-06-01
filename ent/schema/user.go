package schema

import (
	"fmt"
	"regexp"
	"time"

	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema/field"

	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/property"
)

// rfc5322 is a RFC 5322 regex, as per: https://stackoverflow.com/a/201378/5405453.
var (
	rfc5322    = "(?i)(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])" //nolint:lll,gochecknoglobals // ignore
	emailRegex = regexp.MustCompile(fmt.Sprintf("^%s*$", rfc5322))
)

// User holds the schema definition for the User entity.
type User struct {
	ent.Schema
}

// Fields of the User.
func (User) Fields() []ent.Field {
	return []ent.Field{
		field.Int64("id").
			GoType(gqlid.UserID{}),
		field.String("firebaseUid").
			Unique().
			Nillable().
			Optional().
			Immutable(),
		field.String("displayName").
			NotEmpty(),
		field.Time("createdAt").
			Default(time.Now).
			Immutable().
			Annotations(
				entgql.OrderField("CREATED_AT"),
			),
		field.Time("updatedAt").
			Default(time.Now).
			UpdateDefault(time.Now),
		field.Enum("auth_method").
			GoType(property.AuthMethod("")).
			Default(string(property.AuthMethodFirebase)),
		field.String("email").
			Unique().
			Nillable().
			Match(emailRegex).
			Optional(),
		field.Bool("email_verified").
			Default(false),
		field.String("password").
			Nillable().
			Sensitive().
			Optional(),
	}
}

// Edges of the User.
func (User) Edges() []ent.Edge {
	return nil
}
