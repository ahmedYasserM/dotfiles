package main

// Write writes up to len(p) bytes from p
// into the underlying data stream.
// if it writes less than len(p), the function
// should return an error
type Writer interface {
	Write(p []byte) (n int, err error)
	// p here is a source you will read from
	// and it wrill write to the underlying data structure
}

type Reader interface {
	Read(p []byte) (n int, err error)
}

func main() {

}
