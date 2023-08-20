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



// Read read from 
type Reader interface {
    Read(p []byte) (n int, err error)
}

type Writer interface {
    Write(p []byte) (n int, err error) 
}


