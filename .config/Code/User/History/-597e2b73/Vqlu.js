let data = prompt(`Enter some string`);

let choice = prompt(`Do you care about characters' case? (y/n)`);

let careCase = true;

if (choice === "N") {
  careCase = false;
}

let s = 0;
let l = data.length - 1;

while (choice.charAt(s) === choice.charAt(l) && s <= l) {
  s++;
  l--;
}

let isPal = false;

if (s > l) {
  isPal = true;
}
