package main

import (
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	
	var r *mux.Router = mux.NewRouter()
	
	r.HandleFunc("/", serveHome).Methods("GET")

}

func serveHome(res http.ResponseWriter, req *http.Request) {

	

	
}




