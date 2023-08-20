let sum = 0;

do {
  let num = parseInt(prompt("Enter some number"));

  if (!isNaN(num)) {
    sum += num;
  }

  console.log(`sum = ${sum}`);
  console.log(`num = ${num}`);
} while (num != 0);

document.Write("<h1> Welcome to our GetSuM program</h1>");

document.Write("<br/>");

document.Write(`<h1> The summation is: ${sum} </h1>`);
