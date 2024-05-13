package master_key

type masterKeyAEAD struct {
}

func New() *masterKeyAEAD {
	return &masterKeyAEAD{}
}

func (x masterKeyAEAD) Encrypt(plaintext, associatedData []byte) ([]byte, error) {
	// could to encrypt plaintext at here
	return plaintext, nil
}

func (x masterKeyAEAD) Decrypt(ciphertext, associatedData []byte) ([]byte, error) {
	// could to decrypt ciphertext at here
	return ciphertext, nil
}
