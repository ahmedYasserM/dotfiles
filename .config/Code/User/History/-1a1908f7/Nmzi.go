package main

import (
	"net/http"
)

func main() {

	// multiplexer => a piece of code that redirects a request to a hanlder

	var mux *http.ServeMux = http.NewServeMux()

	var root http.Dir = http.Dir("./public")
// http://localhost:8076/static/code.js -> ./public/code.js
	var handler http.Handler = http.FileServer(root)

	var newHandler http.Handler = http.StripPrefix("/static/", handler)

	mux.Handle("/static/", newHandler)

	http.ListenAndServe(":8076", nil)
}
