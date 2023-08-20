let data = prompt("Enter something:");

console.log(typeof data);

document.writeln("<h1>Heading</h1>");

document.writeln("<hr/>");

for (let i = 1; i < 7; i++) {
  document.writeln(`This is Header number ${i}: <h${i}>${data}</h${i}>`);
}
