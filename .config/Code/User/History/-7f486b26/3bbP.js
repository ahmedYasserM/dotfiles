document.writeln("<h1>Entering user info...</h1>")

document.writeln("<hr/>")

let color = prompt("Chose red, green or blue?")


let userName = prompt("Enter your username:")
let tNumber  = prompt("Enter your phone number:")
let mNumber  = prompt("Enter your mobile number:")
let email    = prompt("Enter your email address:")


document.writeln(`<h2> Welcome dear guest: ${userName}</h2>`)
console.log(`%cWelcome dear guest: ${userName}`, "color:red")

document.writeln(`<h2 style="color:${color}> Your telephone number is: ${tNumber}</h2>`)
console.log(`%c,Your telephone number is: ${tNumber},"color:red"`)

document.writeln(`<h2 style="color:${color}> Your mobile number is: ${mNumber}</h2>`)
console.log(`%cYour mobile number is: ${mNumber}, "color:red"`)


document.writeln(`<h2 style="color:${color}> Your email address is: ${email}</h2>`)
console.log(`%cYour email address is: ${email}, "color:red"`)


