# GO NOTES

- **ASCII**:

  - allocate `8-bits` but take `7-bits`, and have codes from `0` to `127`

- **Extended ASCII**:

  - allocate `8-bits` and take `8-bits`, and have codes from `0` to `255`

## Unicode

- **Unicode Code Points**

  - have range from `0` to `0x10FFFF`
  - you will often find the unicode code point in the form of `U+hexa-value-of-this-code-point`

- **UTF-8**

  - if the first byte begins with `0`, the string consists only of `one byte`
  - if the first byte begins with `110`, the string consists only of `two bytes`
  - if the first byte begins with `1110`, the string consists only of `three bytes`
  - if the first byte begins with `11110`, the string consists only of `four bytes`
  - for `2`, `3`, and `4` sequences the `remaining bytes` after the first byte must begin with `10`

---

## Slices

- slice descriptor:

  - addr -> address to array
  - len -> number of items in the array
  - cap -> capacity of the array

- What is make ?

```go
var u[]int = make([]int, 5)

// these are equal to each other

var x[]int = []int {0, 0, 0, 0, 0}
```

- What is new ?

```go
var u[]int = new([]int)

// these are equal to each other

var x[]int
var u *[]int = &x
```

---

## difference between io.Reader and io.Writer

```go
// Read -> reads from the underlying stream and writes into the p slice
type Reader interface {
    Read(p []byte) (n int, err error) // Reads from me
}

// Write -> Reads from the the p slice and writes into the underlying stream
type Writer interface {
    Write(p []byte) (n int, err error) // Writes to me
}
```

## http

- HTTP request => consists of a few lines of text in the following order:

  1.  Request-Line --> request method + url + http version
  2.  Zero or more request headers
  3.  An empty line.
  4.  The message body (optional)

- HTTP response => consists of a few lines of text in the following order:

  1.  Status-Line --> status code + reason phrase
  2.  Zero or more response headers
  3.  An empty line
  4.  The message body (optional)

- URN --> Uniform Resource Name (a string that represents the name of the resource)

- URL --> Uniform Resource Locator (a string that represents the location of the resource)

- URL => <scheme name> : <hierarchical part> : [? <query> ] : [# <fragment> ]
-
- URL encoding, also called percent encoding:

  - URL encoding encodes a character by converting the character to its corresponding byte value in ASCII,
  - then representing that as a pair of hexadecimal digits and prepending it with a percent sign (%).

- static templates or logic-less templates => are HTML interspersed with placeholder tokens.

## HTML Form

- Html Form data is sent in the `request body` if the type of the method was `post`, whatever the type of the `enctype` was
  `application/x-www-form-urlencoded` or `multipart/form-data`

## what is the url-encoded form data ?

URL-encoded form data is a way of encoding the data from an HTML form before sending it to a web server. This encoding is typically used with the HTTP GET and POST methods to transmit data from a client (usually a web browser) to a server. It's one of the default methods of encoding form data in HTML forms, and it's simpler than the `multipart/form-data` encoding that is used for handling file uploads and binary data.

URL-encoded form data is represented as a series of key-value pairs separated by the ampersand (`&`) character, where the key and value are separated by the equals (`=`) sign. The key-value pairs are then appended to the URL as query parameters for a GET request, or they are included in the body of the HTTP request for a POST request.

Here's an example of how URL-encoded form data might look in a GET request:

```
https://example.com/search?query=apple&type=fruit
```

In this example, the `query` and `type` parameters are URL-encoded form data. They are sent as part of the URL in a query string, separated by the `&` character.

Here's an example of how URL-encoded form data might look in a POST request:

```
POST /submit-form HTTP/1.1
Host: example.com
Content-Type: application/x-www-form-urlencoded

username=johndoe&password=secretpassword
```

In this example, the `username` and `password` parameters are URL-encoded form data. They are included in the body of the HTTP request, and the `Content-Type` header indicates that the data is URL-encoded.

To create URL-encoded form data in an HTML form, you don't need to specify the `enctype` attribute, as it is the default behavior. Here's an example of an HTML form with URL-encoded form data:

```html
<form action="/submit-form" method="post">
  <label for="username">Username:</label>
  <input type="text" name="username" id="username" />
  <label for="password">Password:</label>
  <input type="password" name="password" id="password" />
  <input type="submit" value="Submit" />
</form>
```

In this example, the form data will be URL-encoded by default when the user submits the form.

## Form an PostForm

```go
func process(res http.ResponseWriter, req *http.Request) {
	req.ParseForm() // parse the url encoded data in the request body in in the url queries

	var formData map[string][]string = req.Form // the name-value pairs in the request body and in the url query are here

	var formData map[string][]string = req.PostForm // the name-value pairs in the url query only are here

	fmt.Fprintln(res, formData)
}
```

## Pirority of encoded data

- pritory to appear in the map first is to url encoded data

- if url encoded data in the url and request message, then the ones that in the request message have higher priority
