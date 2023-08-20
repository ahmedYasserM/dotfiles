let nums = [];

for (let i = 0; i < 5; i++) {
  let num;

  do {
    num = Number.parseInt(prompt(`[${i + 1}] Enter a number`));
    nums.push(num);
  } while (num === NaN);
}

document.write(`<h1>Sorting</h1>`);
document.write(`<hr/>`);

document.write(`<h2>You have enterd the values of: ${nums.join(",")} <h2>`);
// document.write(`<h2>Your values after being sorted descending: ${} <h2>`)
document.write(`<h2>Your values after being sorted ascending: ${nums.sort().join(",")} <h2>`);
