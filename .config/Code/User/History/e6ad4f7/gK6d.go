package main

import (
	"fmt"
	"mime/multipart"
	"net/http"
)

// the MultipartForm field contains only the form key-value pairs not the URL key value pairs

func process(res http.ResponseWriter, req *http.Request) {
	req.ParseMultipartForm(1024) // call ParseForm when necessary
	
	var mform *multipart.Form = req.MultipartForm

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