package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewLessonAudioID(id int64) LessonAudioID {
	return LessonAudioID{Prefix: LessonAudioModel, ID: id}
}

func NewLessonAudioIDFromBase64(gqlID *Base64ID) (*LessonAudioID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != LessonAudioModel {
		return nil, fmt.Errorf("incorrect lesson audio id prefix")
	}

	return &LessonAudioID{Prefix: LessonAudioModel, ID: gqlID.ID}, nil
}

type LessonAudioID Base64ID

func (id *LessonAudioID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id LessonAudioID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *LessonAudioID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(LessonModel, v); err != nil {
		return err
	}

	*id = LessonAudioID(gid)

	return nil
}

func (id LessonAudioID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *LessonAudioID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(LessonAudioModel, src)
}

func MarshalLessonAudioID(id LessonAudioID) graphql.Marshaler {
	return id
}

func UnmarshalLessonAudioID(v interface{}) (id LessonAudioID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
