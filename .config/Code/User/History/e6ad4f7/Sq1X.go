package main

import (
	"fmt"
	"net/http"
)

// the MultipartForm.Value field contains only the form key-value pairs not the URL key value pairs

// req.MultipartForm field is a struct that contains two maps

func process(res http.ResponseWriter, req *http.Request) {
	req.ParseMultipartForm(1024)
	var mform map[string][]string = req.MultipartForm.Value
	fmt.Fprintln(res, mform)
}

func main() {
	http.Handle("/process", http.HandlerFunc(process))

	var server http.Server = http.Server{
		Addr:    "localhost:4040",
		Handler: nil,
	}

	fmt.Println("Listening on port 4040...")
	server.ListenAndServe()
}
