package main

import (
	"fmt"
	"net/http"
)


// 2. Chanining Handlers

type HelloHandler struct {}

func (h *HelloHandler) ServeHTTP()





// 1. Chanining HandlerFunctions

func main() {

	var server http.Server = http.Server{
		Addr:    "127.0.0.1:4040",
		Handler: nil,
	}

	fmt.Println("Start Listening on port - 4040")
	server.ListenAndServe()
}
