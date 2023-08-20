package main

import "fmt"

func main() {
	var var1 uintptr = 0xc82000c290
	fmt.Println("Value of var1:", var1)
	fmt.Printf("Type of var1: %T", var1)
}
