
document.writeln("<h1>Entering user info...</h1>")

document.writeln("<hr/>")


let userName = prompt("Enter your username:")
let tNumber = prompt("Enter your phone number:")
let mNumber = prompt("Enter your mobile number:")
let email = prompt("Enter your email address:")

if (typeof userName !== "string") {
   console.log("%cusername must be of string", "color:red");
}


if (typeof tNumber !== "string") {
   console.log("%cusername must be of string", "color:red");
}