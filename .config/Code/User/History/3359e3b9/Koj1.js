let nums = [];

for (let i = 0; i < 5; i++) {
  let num;

  do {
    num = Number.parseInt(prompt(`[${i + 1}] Enter a number`));
    nums.push(num);
  } while (num === NaN);
}
