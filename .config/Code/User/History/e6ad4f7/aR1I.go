package main

import (
	"fmt"
	"net/http"
)

func process(res http.ResponseWriter, req *http.Request) {
	// req.ParseMultipartForm(1024)
	// fmt.Fprintln(res, req.Form["hello"])
	fmt.Fprintln(res, "hello, there!")
}

func main() {
	http.Handle("/process", http.HandlerFunc(process))

	var server http.Server = http.Server{
		Addr:    "127.0.0.1:4040",
		Handler: nil,
	}

	fmt.Println("Listening on port 9040...")
	server.ListenAndServe()
}
