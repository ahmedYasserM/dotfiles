package main

import (
	"fmt"
	"net/http"
)

func main() {

	var server http.Server = http.Server{
		Addr:    "127.0.0.1:4040",
		Handler: nil,
	}

	fmt.Println("Start Listening on port - 4040")
	server.ListenAndServe()
}
