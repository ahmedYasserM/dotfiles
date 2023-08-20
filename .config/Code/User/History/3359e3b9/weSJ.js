let nums = [];

for (let i = 0; i < 5; i++) {
  let num;

  do {
    num = Number.parseInt(prompt(`[${i + 1}] Enter a number`));
    nums.push(num);
  } while (num === NaN);
}

document.write(`<h1>Sorting</h1>`)
document.write(`<hr/>`)

document.write(`<h2>You have enterd the values of: ${nums.sort()} <h2>`)
document.write(`<h2> <h2>`)
document.write(`<h2> <h2>`)
document.write(`<h2> <h2>`)