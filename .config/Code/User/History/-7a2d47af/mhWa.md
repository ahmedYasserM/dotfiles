# HTTP

## HTTP Requests and Responses

- A `client` is a computer making an HTTP request

- A `server` is a computer responding to an HTTP request

- A computer can be a client, a server, both, or neither. `Client` and `server` are just words we use to describe what computers are doing within a communication system.

- **Clients** send requests and receive responses

- **Servers** receive requests and send responses

- `A` $\to$ `B`

  - computer `A` acting as a client because it sending a http request and receiving a http response

  - computer `B`acting as a server because it sending a http response and receiving a http request

---

## Web Addresses

- **Domain** $\to$ `DNS` $\to$ **IP Address**

- There are two steps when sending http request over the internet:

- step1: Resolve DNS

- step2: use IP

---

## URL

1. protocol
2. username
3. sub-domain
4. domain
5. super-domain
6. port number
7. path
8. file
9. `#` hash (id of some element in the page)
10. `?`query string

> **fully qualified domain name** $\to$ `sub-domain` + `domain` + `super-dmoain`

#### If you do not specify a port number in a URL, the default port number depends on the protocol being used. Here are the default port numbers for common protocols:

##### - HTTP (Hypertext Transfer Protocol): 80

##### - HTTPS (HTTP Secure): 443

##### - FTP (File Transfer Protocol): 21

##### - SSH (Secure Shell): 22

##### - Telnet: 23

##### - SMTP (Simple Mail Transfer Protocol): 25

##### - POP3 (Post Office Protocol version 3): 110

##### - IMAP (Internet Message Access Protocol): 143

##### When you access a website through a web browser, for example, if you enter "http://example.com" without specifying a port number, the browser will assume port 80 by default for HTTP. Similarly, if you enter "https://example.com," the browser will assume port 443 for HTTPS.

> link explain this well: https://www.youtube.com/watch?v=3ytQJvqzKu8

---
