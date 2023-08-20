let person = [];

function getData(index, inputField, inputRgex) {
  person[index] = prompt(`Enter your ${inputField}`);

  console.log(`regex test: ${inputRgex.test(person[index])}`);

  while (!inputRgex.test(person[index])) {
    console.log(`%cwrong input format`, `color:red`);
    person[index] = prompt(`Enter your ${inputField} again`);
  }
}

let nameRgex = /^[a-z A-Z]+$/;
getData(0, "name", nameRgex);

let pNumRegex = /^[0-9]{8}$/;
getData(1, "phone number", pNumRegex);

let mNumRegex = /^(010|011|012|015)[0-9]{8}$/;
getData(2, "mobile number", mNumRegex);

let emailRegex = /^[a-zA-Z0-9_\.]+@[a-z]+(\.[a-z]+)+$/;
getData(3, "email", emailRegex);

document.write(`<h1>Entering user info</h1>`);
document.write(`<hr/>`);

document.write(`<h2 style="color:#8A9F70">welcome dear guest: ${person[0]} </h2>`);
document.write(`<h2 style="color:#8A9F70">your telephone number is: ${person[1]} </h2>`);
document.write(`<h2 style="color:#8A9F70">your mobile number is: ${person[2]} </h2>`);
document.write(`<h2 style="color:#8A9F70">your email is: ${person[3]} </h2>`);
