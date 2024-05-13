package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewTechniqueID(id int64) TechniqueID {
	return TechniqueID{Prefix: TechniqueModel, ID: id}
}

func NewTechniqueIDFromBase64(gqlID *Base64ID) (*TechniqueID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != TechniqueModel {
		return nil, fmt.Errorf("incorrect technique id prefix")
	}

	return &TechniqueID{Prefix: TechniqueModel, ID: gqlID.ID}, nil
}

type TechniqueID Base64ID

func (id *TechniqueID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id TechniqueID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *TechniqueID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(TechniqueModel, v); err != nil {
		return err
	}

	*id = TechniqueID(gid)

	return nil
}

func (id TechniqueID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *TechniqueID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(TechniqueModel, src)
}

func MarshalTechniqueID(id TechniqueID) graphql.Marshaler {
	return id
}

func UnmarshalTechniqueID(v interface{}) (id TechniqueID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
