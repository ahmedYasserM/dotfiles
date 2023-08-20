
document.writeln("<h1>Entering user info...</h1>")

document.writeln("<hr/>")


let userName = prompt("Enter your username:")
let tNumber = prompt("Enter your phone number:")
let mNumber = prompt("Enter your mobile number:")
let email = prompt("Enter your email address:")


document.writeln(`<h2 style="color:blue> Welcome dear guest: ${userName}</h2>`)

console.log(`%cWelcome dear guest: ${userName}`, "color:red")

document.writeln(`<h2 style="color:blue> Your telephone number is: ${tNumber}</h2>`)
console.log(`%c,Your telephone number is: ${tNumber},"color:red")

document.writeln(`<h2 style="color:blue> Your mobile number is: ${mNumber}</h2>`)
console.log(`%cWelcome dear guest: ${userName}`, "color:red")


document.writeln(`<h2 style="color:blue> Your email address is: ${email}</h2>`)
console.log(`%cWelcome dear guest: ${userName}`, "color:red")


