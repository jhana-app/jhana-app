package property

import (
	"fmt"
	"io"
	"strconv"
)

type AuthMethod string

const (
	AuthMethodLocal    AuthMethod = "local"
	AuthMethodFirebase AuthMethod = "firebase"
)

var authMethods = []AuthMethod{AuthMethodLocal, AuthMethodFirebase} //nolint:gochecknoglobals // required for Enum.

// Values provides list valid values for Enum.
func (AuthMethod) Values() (kinds []string) {
	for _, s := range authMethods {
		kinds = append(kinds, string(s))
	}
	return
}

// IsValid returns `true` if AuthMethod is valid.
func (t AuthMethod) IsValid() bool {
	for _, s := range authMethods {
		if s == t {
			return true
		}
	}
	return false
}

func (t AuthMethod) MarshalGQL(w io.Writer) {
	_, _ = io.WriteString(w, strconv.Quote(string(t)))
}

func (t *AuthMethod) UnmarshalGQL(v interface{}) error {
	s, ok := v.(string)
	if !ok {
		return fmt.Errorf("invalid type %T, expect AuthMethod", v)
	}

	*t = AuthMethod(s)
	if !t.IsValid() {
		return fmt.Errorf("invalid AuthMethod %s", s)
	}

	return nil
}
