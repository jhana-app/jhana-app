package property

import (
	"fmt"
	"io"
	"strconv"
)

type LessonType string

const (
	LessonGuided  LessonType = "guided"
	LessonMastery LessonType = "mastery"
)

var lessonTypes = []LessonType{LessonGuided, LessonMastery} //nolint:gochecknoglobals // required for Enum.

// Values provides list valid values for Enum.
func (LessonType) Values() (kinds []string) {
	for _, s := range lessonTypes {
		kinds = append(kinds, string(s))
	}
	return
}

// IsValid returns `true` if LessonType is valid.
func (t LessonType) IsValid() bool {
	for _, s := range lessonTypes {
		if s == t {
			return true
		}
	}
	return false
}

func (t LessonType) MarshalGQL(w io.Writer) {
	_, _ = io.WriteString(w, strconv.Quote(string(t)))
}

func (t *LessonType) UnmarshalGQL(v interface{}) error {
	s, ok := v.(string)
	if !ok {
		return fmt.Errorf("invalid type %T, expect LessonType", v)
	}

	*t = LessonType(s)
	if !t.IsValid() {
		return fmt.Errorf("invalid LessonType %s", s)
	}

	return nil
}
