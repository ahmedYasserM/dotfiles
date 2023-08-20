let data = prompt(`Enter some string`);

let choice = prompt(`Do you care about characters' case? (y/n)`);

let careCase = true;

if (choice === "N") {
  careCase = false;
}

let l = data.length - 1;

let s = 0
while(choice.charAt(0))