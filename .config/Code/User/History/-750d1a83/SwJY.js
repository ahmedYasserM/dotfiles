let sum = 0;

do {
  let num = ParseInt(prompt("Enter some number"));

  if (!isNaN(num)) {
    sum += num;
  }
} while (num != 0);


document.Write("<h1> <h1>")