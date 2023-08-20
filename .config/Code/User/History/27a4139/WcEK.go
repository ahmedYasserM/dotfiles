package main

// Models //
type Course struct {
	CourseId    string  `json:"courseid"`
	CourseName  string  `json:"coursename"`
	CoursePrice float32 `json:"price"`
	Author      *Author `json:"author"`
}

type Author struct {
	FullName string `json:"fullname"`
	Website  string `json:"website"`
}

// Fake DB //
var courses []Course

// Middleware, helper functions //

// if the course does not have
// courseId and does not have
// courseName, this method will
// return true, and false otherwise.
func (c *Course) IsEmpty() bool {
	return c.CourseId == "" && c.CourseName == ""
}

func main() {
}

// HTTP request => consists of a few lines of text in the following order:
// 1. Request-Line
// 2. Zero or more request headers
// 3. An empty line.
// 4. The message body (optional)


// 1. request line => request method + url + http version 
// 2. request headers (zero or more)
// 3. empty line
// 4. message body (optional and depends on the request method)


// HTTP response => consists of a few lines of text in the following order:
// 1. Status-Line => status code + reasone 
// 2. Zero or more response headers
// 3. An empty line 
// 4. The message body (optional)
