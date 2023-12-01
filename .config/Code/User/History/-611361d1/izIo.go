package main

import "fmt"

func main() {

	i := 0
	for {
		fmt.Printf("thi is line #%d\n", i+1)

		i++
		if i == 5 {
			break
		}
	}

}
