let sum = 0;

let num = ParseInt(prompt("Enter some number"));
do {
  let num = ParseInt(prompt("Enter some number"));

  if (!isNaN(num)) {
    sum += num;
  }
} while (num != 0);

document.Write("<h1> Welcome to our GetSuM program</h1>");

document.Write("<br/>");

document.Write(`<h1> The summation is: ${sum} </h1>`);
