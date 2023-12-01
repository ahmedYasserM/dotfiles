package main

import "fmt"

func main() {

	i := 0
	for {
		fmt.Printf("Hello, world!!\n")

		i++
		if i == 5 {
			break
		}
	}

}
