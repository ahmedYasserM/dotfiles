package main

import (
	"fmt"
	"net/http"
)

func process(res http.ResponseWriter, req *http.Request) {
	// req.ParseMultipartForm(1024)
	// var formData map[string][]string = req.MultipartForm.Value
	// var formData string = req.Fo
	// req.ParseMultipartForm(1024)
	req.ParseForm()
	fmt.Fprintln(res, req.MultipartForm.Value)
	fmt.Fprintln(res, req.Form) // hello=world, thread=123
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

/*
*
*
*
*
*
*
*
*
*
*
*
*
*
 */
