package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewAuthTokenID(id int64) AuthTokenID {
	return AuthTokenID{Prefix: AuthTokenModel, ID: id}
}

func NewAuthTokenIDFromBase64(gqlID *Base64ID) (*AuthTokenID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != AuthTokenModel {
		return nil, fmt.Errorf("incorrect auth_token id prefix")
	}

	return &AuthTokenID{Prefix: AuthTokenModel, ID: gqlID.ID}, nil
}

type AuthTokenID Base64ID

func (id *AuthTokenID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id AuthTokenID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *AuthTokenID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(AuthTokenModel, v); err != nil {
		return err
	}

	*id = AuthTokenID(gid)

	return nil
}

func (id AuthTokenID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *AuthTokenID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(AuthTokenModel, src)
}

func MarshalAuthTokenID(id AuthTokenID) graphql.Marshaler {
	return id
}

func UnmarshalAuthTokenID(v interface{}) (id AuthTokenID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
