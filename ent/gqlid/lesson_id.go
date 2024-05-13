package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewLessonID(id int64) LessonID {
	return LessonID{Prefix: LessonModel, ID: id}
}

func NewLessonIDFromBase64(gqlID *Base64ID) (*LessonID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != LessonModel {
		return nil, fmt.Errorf("incorrect lesson id prefix")
	}

	return &LessonID{Prefix: LessonModel, ID: gqlID.ID}, nil
}

type LessonID Base64ID

func (id *LessonID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id LessonID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *LessonID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(LessonModel, v); err != nil {
		return err
	}

	*id = LessonID(gid)

	return nil
}

func (id LessonID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *LessonID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(LessonModel, src)
}

func MarshalLessonID(id LessonID) graphql.Marshaler {
	return id
}

func UnmarshalLessonID(v interface{}) (id LessonID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
