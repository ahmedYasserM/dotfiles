let data = prompt("Enter some string");

let eNum = 0;

let len = data.length();

for (let i = 0; i < len; i++) {
  if (data.charAt(i) === "e") {
    eNum++;
  }
}

console.log(`enum = ${eNum}`);
