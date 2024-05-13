package gqlid

import (
	"database/sql/driver"
	"fmt"
	"io"

	"github.com/99designs/gqlgen/graphql"
)

func NewJournalRecordID(id int64) JournalRecordID {
	return JournalRecordID{Prefix: JournalRecordModel, ID: id}
}

func NewJournalRecordIDFromBase64(gqlID *Base64ID) (*JournalRecordID, error) {
	if gqlID == nil {
		return nil, nil
	}

	if gqlID.Prefix != JournalRecordModel {
		return nil, fmt.Errorf("incorrect journal record id prefix")
	}

	return &JournalRecordID{Prefix: JournalRecordModel, ID: gqlID.ID}, nil
}

type JournalRecordID Base64ID

func (id *JournalRecordID) Base64ID() *Base64ID {
	if id == nil {
		return nil
	}

	base64ID := Base64ID(*id)
	return &base64ID
}

func (id JournalRecordID) MarshalGQL(w io.Writer) {
	Base64ID(id).MarshalGQL(w)
}

func (id *JournalRecordID) UnmarshalGQL(v interface{}) error {
	var gid Base64ID
	if err := gid.UnmarshalGQLWithPrefix(JournalRecordModel, v); err != nil {
		return err
	}

	*id = JournalRecordID(gid)

	return nil
}

func (id JournalRecordID) Value() (driver.Value, error) {
	return Base64ID(id).Value()
}

func (id *JournalRecordID) Scan(src interface{}) error {
	return (*Base64ID)(id).ScanWithPrefix(JournalRecordModel, src)
}

func MarshalJournalRecordID(id JournalRecordID) graphql.Marshaler {
	return id
}

func UnmarshalJournalRecordID(v interface{}) (id JournalRecordID, err error) {
	err = id.UnmarshalGQL(v)
	return
}
