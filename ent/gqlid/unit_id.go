package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewUnitID(id int64) UnitID {
	return UnitID{Prefix: UnitModel, ID: id}
}

func NewUnitIDFromBase64(gqlID *Base64ID) (*UnitID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != UnitModel {
		return nil, fmt.Errorf("incorrect unit id prefix")
	}

	return &UnitID{Prefix: UnitModel, ID: gqlID.ID}, nil
}

type UnitID Base64ID

func (id *UnitID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id UnitID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *UnitID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(UnitModel, v); err != nil {
		return err
	}

	*id = UnitID(gid)

	return nil
}

func (id UnitID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *UnitID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(UnitModel, src)
}

func MarshalUnitID(id UnitID) graphql.Marshaler {
	return id
}

func UnmarshalUnitID(v interface{}) (id UnitID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
