package main

import (
	"bytes"
	"fmt"
)

func main() {

	var b bytes.Buffer

	_, err := b.Write([]byte("hello, "))

	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Fprintf(&b, "ahmed!")

	fmt.Println("b: ", b.String())
}
