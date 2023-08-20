package main

import (
	"fmt"
	"net/http"
)

// 2. Chanining Handlers

type HelloHandler struct{}

func (h *HelloHandler) ServeHTTP(res http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(res, "<h1>Hello, In our Website...</h1>")
}

// pipeline processing

func protect(h http.Handler) http.Handler {

	return http.HandlerFunc(func(res http.ResponseWriter, req *http.Request) {
		fmt.Println("Doing Some Very Important Security Checks....")

		h.ServeHTTP(res, req)
	})

}


func log(h http.Handler) http.Handler {
	return http.HandlerFunc(func (res http.ResponseWriter, req *http.Request) {
		fmt.Printf("Handler Called - %T\n", h)

		h.ServeHTTP(res, req)
	})
}


// 1. Chanining HandlerFunctions

func main() {
	var h *HelloHandler = &HelloHandler{} // Handler
	
	http.Handle("/hello", protect(log(h)))
	
	
	
	

	

	
	var server http.Server = http.Server{
		Addr:    "127.0.0.1:4040",
		Handler: nil,
	}

	fmt.Println("Start Listening on port - 4040")
	server.ListenAndServe()
}
