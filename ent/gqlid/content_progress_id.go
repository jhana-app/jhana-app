package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewContentProgressID(id int64) ContentProgressID {
	return ContentProgressID{Prefix: ContentProgressModel, ID: id}
}

func NewContentProgressIDFromBase64(gqlID *Base64ID) (*ContentProgressID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != ContentProgressModel {
		return nil, fmt.Errorf("incorrect content progress id prefix")
	}

	return &ContentProgressID{Prefix: ContentProgressModel, ID: gqlID.ID}, nil
}

type ContentProgressID Base64ID

func (id *ContentProgressID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id ContentProgressID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *ContentProgressID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(LessonModel, v); err != nil {
		return err
	}

	*id = ContentProgressID(gid)

	return nil
}

func (id ContentProgressID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *ContentProgressID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(ContentProgressModel, src)
}

func MarshalContentProgressID(id ContentProgressID) graphql.Marshaler {
	return id
}

func UnmarshalContentProgressID(v interface{}) (id ContentProgressID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
