package main


import(
	"fmt"
	"net/http"
)

func main()  {
	
	// multiplexer => a piece of code that redirects a request to a hanlder
	
	var mux *http.ServeMux = http.NewServeMux()
	mux.Handle("/", index)
	
	
}