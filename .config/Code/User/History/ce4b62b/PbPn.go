package main

import "fmt"

func main() {

	// uintptr -> is an integer representation of a memory address.

	// uintptr -> is an integer representation of a memroy address.
	fmt.Println("if you have to think about how to be effective, do not do this here and exert some of your work...")

	x := 5

	xPtr := &x

	fmt.Println("xPtr: ", xPtr)
	fmt.Printf("Type of xPtr: %T\n", xPtr)
}
