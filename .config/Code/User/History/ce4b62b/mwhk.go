package main

import "fmt"

func main() {

	// uintptr -> 
	x := 5

	xPtr := &x

	fmt.Println("xPtr: ", xPtr)
	fmt.Printf("Type of xPtr: %T\n", xPtr)
}
