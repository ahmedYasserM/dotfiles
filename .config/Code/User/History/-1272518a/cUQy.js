let data = prompt("Enter some string");

let eNum = 0;

let len = data.length;

for (let i = 0; i < len; i++) {
  if (data.charAt(i) === "e") {
    eNum++;
  }
}

document.write(`<h1> number of e's ${eNum} </h1>`);
console.log(`enum = ${eNum}`);
