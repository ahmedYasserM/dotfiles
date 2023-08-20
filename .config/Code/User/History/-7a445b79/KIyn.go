package main

import (
	"fmt"
	"os"

	"github.com/goinaction/code/chapter3/words"
)

func main() {

	var file_name string = os.Args[1]

	content, err := os.ReadFile(file_name)

	if err != nil {
		fmt.Println(err)
		return
	}
	
	
	var text string = string(content)

	// var word_count int = words.CountWords(text);

	var word_count int = words.CountWords(text)

	fmt.Printf("There are %d words in your text.\n", word_count)
}
