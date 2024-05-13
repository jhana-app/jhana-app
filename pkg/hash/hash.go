package hash

type HasherComparer interface {
	Hash(password string) (string, error)
	Compare(hash string, password string) (bool, error)
}

func newHash() HasherComparer {
	return NewArgon2idHash()
}
