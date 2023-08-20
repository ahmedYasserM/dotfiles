let nums = [];

for (let i = 0; i < 5; i++) {
  let num;

  do {
    num = Number.parseInt(prompt(`[${i + 1}] Enter a number`));
    console.log(`%c$ input is NaN`, `color:red`);
  } while (Number.isNaN(num));
  nums.push(num);
}

document.write(`<h1>Sorting</h1>`);
document.write(`<hr/>`);

document.write(
  `<h2 style="color:#A2bba3">You have enterd the values of: <span style="color:black">${nums.join(
    ","
  )}</span> <h2>`
);
document.write(
  `<h2 style="color:#A2baa3">Your values after being sorted descending: <span style="color:black"> ${nums
    .sort((a, b) => a - b)
    .reverse()
    .join(",")}</span> <h2>`
);
document.write(
  `<h2 style="color:#A2baa3">Your values after being sorted ascending: <span style="color:black"> ${nums
    .sort((a, b) => a - b)
    .join(",")}</span> <h2>`
);
