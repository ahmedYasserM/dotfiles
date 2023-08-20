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

// 1 2 3 4 5 6 7 8 9 10
// the first word in the request line is the request method (GET or POST)