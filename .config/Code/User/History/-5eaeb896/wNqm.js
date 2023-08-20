let num = parseInt(prompt("Enter a number"));

if (!isNaN(num)) {
  function checkEvOd(num) {
    if (num % 2 === 0) {
      document.write(`<h1>${num} is even </h1>`);
    } else {
      document.write(`<h1>${num} is odd </h1>`);
    }
  }
}
