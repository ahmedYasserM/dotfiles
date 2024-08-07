package main

import (
	"fmt"
	"net/http"
)


// the MultipartForm field contains only the form key-value pairs not the URL key value pairs

func process(res http.ResponseWriter, req *http.Request) {
	req.ParseMultipartForm(1024)
	fmt.Fprintln(res, req.Form) 
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
