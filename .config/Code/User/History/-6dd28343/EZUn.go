package main

import (
	"bytes"
	"compress/zlib"
	"fmt"
	"log"
	"os"
)

func compress(i string) ([]byte, error) {

	var b bytes.Buffer

	w := zlib.NewWriter(&b)

	_, err := w.Write([]byte(i))

	if err != nil {
		return nil, err
	}

	err = w.Close()
	if err != nil {
		return nil, err
	}

	return b.Bytes(), nil
}

func main() {
	data := "This is some reandom data....."
	cd, err := compress(data)

	if err != nil {
		log.Fatalf("%v\n", err)
	}

	f, err := os.OpenFile("compression.zlib", os.O_CREATE|os.O_RDWR, 0666)

	if err != nil {
		log.Fatalf("%v\n", err)
	}
	
	defer f.Close()
	
	

	fmt.Printf("%s\n", string(cd))
}
