let sum = 0;

do {
  let num = parseInt(prompt("Enter some number"));

  if (!isNaN(num)) {
    sum += num;
  }
} while (num !== 0);

document.write("<h1> Welcome to our GetSuM program</h1>");

document.write("<br/>");

document.write(`<h1> The summation is: ${sum} </h1>`);
