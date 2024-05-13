package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewUserID(id int64) UserID {
	return UserID{Prefix: UserModel, ID: id}
}

func NewUserIDFromBase64(gqlID *Base64ID) (*UserID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != UserModel {
		return nil, fmt.Errorf("incorrect user id prefix")
	}

	return &UserID{Prefix: UserModel, ID: gqlID.ID}, nil
}

type UserID Base64ID

func (id *UserID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id UserID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *UserID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(UserModel, v); err != nil {
		return err
	}

	*id = UserID(gid)

	return nil
}

func (id UserID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *UserID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(UserModel, src)
}

func MarshalUserID(id UserID) graphql.Marshaler {
	return id
}

func UnmarshalUserID(v interface{}) (id UserID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
