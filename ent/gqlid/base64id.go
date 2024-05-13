package gqlid

import (
	"database/sql/driver"
	"encoding/base64"
	"fmt"
	"io"
	"strconv"
	"strings"
)

// rawStdEncoding is used for base64 encoding without padding for cleaner IDs.
var rawStdEncoding = base64.StdEncoding.WithPadding(base64.NoPadding) //nolint:gochecknoglobals // required for base64 encoding

const partsLength = 2

type Base64ID struct {
	Prefix ModelType
	ID     int64
}

func (id Base64ID) String() string {
	return rawStdEncoding.EncodeToString([]byte(fmt.Sprintf("%s:%d", id.Prefix, id.ID)))
}

func (id Base64ID) MarshalGQL(w io.Writer) {
	_, err := io.WriteString(w, strconv.Quote(id.String()))
	if err != nil {
		panic(err)
	}
}

func (id *Base64ID) UnmarshalGQL(v interface{}) error {
	s, ok := v.(string)
	if !ok {
		return fmt.Errorf("invalid id type %T, expect string", v)
	}

	decoded, err := rawStdEncoding.DecodeString(s)
	if err != nil {
		return fmt.Errorf("id should have a format base64(\"model_name:pk\")")
	}

	parts := strings.Split(string(decoded), ":")
	if len(parts) != partsLength {
		return fmt.Errorf("id should have a format base64(\"model_name:pk\")")
	}

	idPart, err := strconv.ParseInt(parts[1], 10, 64)
	if err != nil {
		return fmt.Errorf("id should have a format base64(\"model_name:pk\")")
	}

	*id = Base64ID{ModelType(parts[0]), idPart}

	return nil
}

func (id *Base64ID) UnmarshalGQLWithPrefix(prefix ModelType, v interface{}) error {
	if err := id.UnmarshalGQL(v); err != nil {
		return err
	}

	if id.Prefix != prefix {
		return fmt.Errorf("expected id to start with prefix %s", prefix)
	}

	return nil
}

func (id Base64ID) Value() (driver.Value, error) {
	return id.ID, nil
}

func (id *Base64ID) Scan(src interface{}) error {
	// NOTE(vlad): should be implemented in ObjectID type
	panic(fmt.Errorf("not implemented"))
}

func (id *Base64ID) ScanWithPrefix(prefix ModelType, src interface{}) error {
	if src != nil {
		id.Prefix = prefix
		var ok bool
		id.ID, ok = src.(int64)
		if !ok {
			return fmt.Errorf("invalid id type %T, expect int64", src)
		}
	}

	return nil
}
