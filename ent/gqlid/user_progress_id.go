package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewUserProgressID(id int64) UserProgressID {
	return UserProgressID{Prefix: UserProgressModel, ID: id}
}

func NewUserProgressIDFromBase64(gqlID *Base64ID) (*UserProgressID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != UserProgressModel {
		return nil, fmt.Errorf("incorrect user progress id prefix")
	}

	return &UserProgressID{Prefix: UserProgressModel, ID: gqlID.ID}, nil
}

type UserProgressID Base64ID

func (id *UserProgressID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id UserProgressID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *UserProgressID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(UserProgressModel, v); err != nil {
		return err
	}

	*id = UserProgressID(gid)

	return nil
}

func (id UserProgressID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *UserProgressID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(UserProgressModel, src)
}

func MarshalUserProgressID(id UserProgressID) graphql.Marshaler {
	return id
}

func UnmarshalUserProgressID(v interface{}) (id UserProgressID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
