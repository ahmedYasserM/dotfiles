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

// HTTP request => consi
// 1. 
// 
// 
// 
// 