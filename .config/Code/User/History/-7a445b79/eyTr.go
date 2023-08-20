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



// Read -> reads from the underlying stream to the p slice
type Reader interface {
    Read(p []byte) (n int, err error)
}

// Write -> writes
type Writer interface {
    Write(p []byte) (n int, err error) 
}


