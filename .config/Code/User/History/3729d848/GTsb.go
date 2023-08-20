package main

import (
	"fmt"
	"net/http"
	"reflect"
	"runtime"
)

// main.hello
func hello(res http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(res, "hello, from hello function...")
}

func log(h http.HandlerFunc) http.HandlerFunc {
	return func(res http.ResponseWriter, req *http.Request) {
		var name string = runtime.FuncForPC(reflect.ValueOf(h).Pointer()).Name()
		fmt.Println("Handler Function called - ", name)

		h(res, req)
	}
}

func protect(h http.HandlerFunc) http.HandlerFunc {
	return func(res http.ResponseWriter, req *http.Request) {
		fmt.Println("User Is Protected...")

		h(res, req)
	}
}

func main() {
	http.Handle("/hello", http.HandlerFunc(log(protect(hello))))

	// pipeline processing
	var server http.Server = http.Server{
		Addr:    "127.0.0.1:4040",
		Handler: nil,
	}

	fmt.Println("Start Listening on port 4040...")
	server.ListenAndServe()
}

// we use http.Handle() function to attach a handler to DefaultServerMux

// plain html files -> do not contain template directives.
