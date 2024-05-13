package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewContentEpisodeID(id int64) ContentEpisodeID {
	return ContentEpisodeID{Prefix: ContentEpisodeModel, ID: id}
}

func NewContentEpisodeIDFromBase64(gqlID *Base64ID) (*ContentEpisodeID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != ContentEpisodeModel {
		return nil, fmt.Errorf("incorrect content episode id prefix")
	}

	return &ContentEpisodeID{Prefix: ContentEpisodeModel, ID: gqlID.ID}, nil
}

type ContentEpisodeID Base64ID

func (id *ContentEpisodeID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id ContentEpisodeID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *ContentEpisodeID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(ContentEpisodeModel, v); err != nil {
		return err
	}

	*id = ContentEpisodeID(gid)

	return nil
}

func (id ContentEpisodeID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *ContentEpisodeID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(ContentEpisodeModel, src)
}

func MarshalContentEpisodeID(id ContentEpisodeID) graphql.Marshaler {
	return id
}

func UnmarshalContentEpisodeID(v interface{}) (id ContentEpisodeID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
