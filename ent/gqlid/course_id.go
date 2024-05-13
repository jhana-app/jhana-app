package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewCourseID(id int64) CourseID {
	return CourseID{Prefix: CourseModel, ID: id}
}

func NewCourseIDFromBase64(gqlID *Base64ID) (*CourseID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != CourseModel {
		return nil, fmt.Errorf("incorrect course id prefix")
	}

	return &CourseID{Prefix: CourseModel, ID: gqlID.ID}, nil
}

type CourseID Base64ID

func (id *CourseID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id CourseID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *CourseID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(CourseModel, v); err != nil {
		return err
	}

	*id = CourseID(gid)

	return nil
}

func (id CourseID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *CourseID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(CourseModel, src)
}

func MarshalCourseID(id CourseID) graphql.Marshaler {
	return id
}

func UnmarshalCourseID(v interface{}) (id CourseID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
