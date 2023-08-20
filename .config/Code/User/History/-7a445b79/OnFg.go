package main

import (
	"fmt"
	"strings"
)

func main() {
	var r *strings.Reader = strings.NewReader("hello, from my request!")

	var out []byte = make([]byte, r.Len())
	r.Read(out)

	fmt.Println("out:", string(out))
}





