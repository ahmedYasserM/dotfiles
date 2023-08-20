package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {

	var r *mux.Router = mux.NewRouter()

	r.HandleFunc("/", serveHome).Methods("GET")

	log.Fatal(http.ListenAndServe(":4040", r))

}

func serveHome(res http.ResponseWriter, req *http.Request) {

	fmt.Println("Serve new request...")
	res.Write([]byte("<h1>hello, from taru project..."))
}
