package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewContentID(id int64) ContentID {
	return ContentID{Prefix: ContentModel, ID: id}
}

func NewContentIDFromBase64(gqlID *Base64ID) (*ContentID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != ContentModel {
		return nil, fmt.Errorf("incorrect content id prefix")
	}

	return &ContentID{Prefix: ContentModel, ID: gqlID.ID}, nil
}

type ContentID Base64ID

func (id *ContentID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id ContentID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *ContentID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(ContentModel, v); err != nil {
		return err
	}

	*id = ContentID(gid)

	return nil
}

func (id ContentID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *ContentID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(ContentModel, src)
}

func MarshalContentID(id ContentID) graphql.Marshaler {
	return id
}

func UnmarshalContentID(v interface{}) (id ContentID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
