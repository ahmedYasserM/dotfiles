package main

import (
	"net/http"
)

func main() {

	// multiplexer => a piece of code that redirects a request to a hanlder

	var mux *http.ServeMux = http.NewServeMux()
	
	var root http.Dir = http.Dir("/public")
	
	var handler http.Handler = http.FileServer(root)
	
	var newHandler http.Handler = http.StripPrefix("/static/", handler)
	
	mux.Handle("/static/", newHandler)

}
