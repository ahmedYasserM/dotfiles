package main

import (
	"bytes"
	"compress/zlib"
	"flag"
	"fmt"
	"io"
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

func decompress(b []byte) ([]byte, error) {
	t := bytes.NewBuffer(b)


	reader, err := zlib.NewReader(t)

	if err != nil {
		return nil, err
	}

	err = reader.Close()
	if err != nil {
		log.Fatalf("%v\n", err)
	}

	data, err := io.ReadAll(reader)

	if err != nil {
		log.Fatalf("%v\n", err)
	}

	return data, nil

}

func main() {

	var f string
	flag.StringVar(&f, "f", "", "file name")
	flag.Parse()

	t, err := os.ReadFile(f)

	if err != nil {
		log.Fatalf("%v\n", err)
	}

	data, err := decompress(t)

	if err != nil {
		log.Fatalf("%v\n", err)
	}

	fmt.Printf("%s\n", string(data))
}
