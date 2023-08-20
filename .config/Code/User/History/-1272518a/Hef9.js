let data = prompt("Enter some string");

let eNum = 0;

data.forEach((c) => {
  if (c === "e") {
    eNum++;
  }
});

console.log(`enum = ${eNum}`);
