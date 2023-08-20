let data = prompt(`Enter some string`);

let choice = prompt(`Do you care about characters' case? (y/n)`);

let careCase = true;

if (choice === "n") {
  careCase = false;
}

let s = 0;
let l = data.length - 1;

while (choice.charAt(s) === choice.charAt(l) && s < l) {
  s++;
  l--;
}

// noon
// 0 1 2 3
let isPal = false;

if (s === l) {
  isPal = true;
}

console.log(`s = ${s} && l = ${l}`);

if (isPal === true) {
  document.write(`String is pailndrome`);
} else {
  document.write(`String is not pailndrome`);
}
