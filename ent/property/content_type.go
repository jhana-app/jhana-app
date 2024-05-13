package property

import (
	"fmt"
	"io"
	"strconv"
)

type ContentType string

const (
	ContentAudio ContentType = "audio"
	ContentVideo ContentType = "video"
	ContentText  ContentType = "text"
)

var contentTypes = []ContentType{ContentAudio, ContentVideo, ContentText} //nolint:gochecknoglobals // required for Enum.

// Values provides list valid values for Enum.
func (ContentType) Values() (kinds []string) {
	for _, s := range contentTypes {
		kinds = append(kinds, string(s))
	}
	return
}

// IsValid returns `true` if ContentType is valid.
func (t ContentType) IsValid() bool {
	for _, s := range contentTypes {
		if s == t {
			return true
		}
	}
	return false
}

func (t ContentType) MarshalGQL(w io.Writer) {
	_, _ = io.WriteString(w, strconv.Quote(string(t)))
}

func (t *ContentType) UnmarshalGQL(v interface{}) error {
	s, ok := v.(string)
	if !ok {
		return fmt.Errorf("invalid type %T, expect ContentType", v)
	}

	*t = ContentType(s)
	if !t.IsValid() {
		return fmt.Errorf("invalid ContentType %s", s)
	}

	return nil
}
