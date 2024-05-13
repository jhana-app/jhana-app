package cipher

import "github.com/google/tink/go/aead"

func LoadKeySets(path string) {
	kh := createOrRead(path)
	var err error
	if aeadCipher, err = aead.New(kh); err != nil {
		panic(err)
	}
}

func Encrypt(plaintext string) ([]byte, error) {
	return aeadCipher.Encrypt([]byte(plaintext), []byte{})
}

func Decrypt(ciphertext string) ([]byte, error) {
	return aeadCipher.Decrypt([]byte(ciphertext), []byte{})
}
