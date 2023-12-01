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


func decompress(b []byte)[]byte, error {
	
	
}

func main() {
	data := "This is some reandom data....."

	f, err := os.OpenFile("compression.zlib", os.O_CREATE|os.O_RDWR, 0666)

	if err != nil {
		log.Fatalf("%v\n", err)
	}
	
	defer f.Close()
	
	cd, err := compress(data)

	if err != nil {
		log.Fatalf("%v\n", err)
	}

	_, err = f.Write(cd)
	
	if err != nil {
		log.Fatalf("%v\n", err)
	}
	
	fmt.Printf("%s\n", string(cd))
}
