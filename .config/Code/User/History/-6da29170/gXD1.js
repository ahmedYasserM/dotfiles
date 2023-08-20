let data = prompt("Enter something:")

// if (data === null) {
//     document.writeln(`<h1>Please Enter data :( </h1>`)
// }

document.writeln("<h1>Heading in First </h1>")

for(let i = 1; i < 7; i++) {
   document.writeln(`<h${i}>${data}</h${i}>`) 
}

