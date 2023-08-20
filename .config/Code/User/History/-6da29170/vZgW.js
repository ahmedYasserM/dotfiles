let data = prompt("Enter something:")

// if (data === null) {
//     document.writeln(`<h1>Please Enter data :( </h1>`)
// }

document.writeln("<h1>Heading</h1>")

document.writeln("<br>")


for(let i = 1; i < 7; i++) {
   document.writeln(`<h${i}>${data}</h${i}>`) 
}

