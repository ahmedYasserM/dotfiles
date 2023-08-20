let data = prompt(`Enter some string`);

let choice = prompt(`Do you care about characters' case? (y/n)`);

if (choice === "n") {
  data = data.toLowerCase();
}

let s = 0;
let l = data.length - 1;

while (data.charAt(s) === data.charAt(l) && s < l) {
  s++;
  l--;
}

let isPal = false;

if (s >= l) {
  isPal = true;
}

console.log(`s = ${s} && l = ${l}`);

if (isPal === true) {
  document.write(`String is pailndrome`);
} else {
  document.write(`String is not pailndrome`);
}
