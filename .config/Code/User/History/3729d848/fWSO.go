package main

import (
	"fmt"
	"net/http"
)

type HelloHandler struct{}

func (h *HelloHandler) ServeHTTP(res http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(res, "Hi, I am a new Hello, Handler :)")
}

func log(h http.Handler) http.Handler {
	return http.HandlerFunc(func(res http.ResponseWriter, req *http.Request) {
		fmt.Printf("Handler Called - %T\n", h)

		h.ServeHTTP(res, req)
	})
}

func protect(h http.Handler) http.Handler {
	return http.HandlerFunc(func(res http.ResponseWriter, req *http.Request) {
		fmt.Println("Secure User here.....")

		h.ServeHTTP(res, req)
	})
}

func main() {

	h := HelloHandler{}
	
	server := http.Server {
		Addr: "127.0.0.1:4040",
		Handler: nil,
	}


}
