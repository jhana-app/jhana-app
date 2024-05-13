package cipher

import (
	"fmt"
	"testing"
)

func Test_write(t *testing.T) {
	create("./ks.bin")
}

func Test_read(t *testing.T) {
	read("./ks.bin")
}

func Test(t *testing.T) {
	bytes, err := Encrypt("123456879")
	if err != nil {
		panic(err)
	}
	fmt.Println(bytes)
}
