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
// 1. Request-Line --> request method + url + http version 
// 2. Zero or more request headers
// 3. An empty line.
// 4. The message body (optional)



// HTTP response => consists of a few lines of text in the following order:
// 1. Status-Line --> status code + reason phrase
// 2. Zero or more response headers
// 3. An empty line 
// 4. The message body (optional)

// URN --> Uniform Resource Name (a string that represents the name of the resource)
// URL --> Uniform Resource Locator (a string that represents the location of the resource)


// URL => <shceme name> : <hierarchical part> : [? <query> ] : [# <fragment> ]

// URL encoding, also called percent encoding:
// URL encoding encodes a character by converting the character to its corresponding byte value in ASCII,
// then representing that as a pair of hexadecimal digits and prepending it with a percent sign (%).