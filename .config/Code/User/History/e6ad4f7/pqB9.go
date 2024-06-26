package main

import (
	"fmt"
	"net/http"
)

func process(res http.ResponseWriter, req *http.Request) {
	// req.ParseMultipartForm(1024)
	// fmt.Fprintln(res, req.Form["hello"])
	fmt.Fprintln(res, req.FormValue("hello"))
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
