package hash

import (
	"github.com/alexedwards/argon2id"
)

// based on https://snyk.io/blog/secure-password-hashing-in-go/

type argon2idHash struct {
	params *argon2id.Params
}

var _ HasherComparer = (*argon2idHash)(nil)

// NewArgon2idHash constructor function for
// Argon2idHash.
func NewArgon2idHash() *argon2idHash {
	return NewArgon2idHashWithParams(argon2id.DefaultParams)
}

func NewArgon2idHashWithParams(params *argon2id.Params) *argon2idHash {
	return &argon2idHash{
		params: params,
	}
}

// Hash using the password.
// If not salt value provided fallback to random value
// generated of a given length.
func (a *argon2idHash) Hash(password string) (string, error) {
	return argon2id.CreateHash(password, a.params)
}

// Compare generated hash with store hash.
func (a *argon2idHash) Compare(storedHash, password string) (bool, error) {
	return argon2id.ComparePasswordAndHash(password, storedHash)
}
