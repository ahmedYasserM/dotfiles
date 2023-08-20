function getData(index, inputField, inputRgex) {
  person[index] = prompt(`Enter your ${inputField}`);

  while (!inputRgex.test(person[index])) {
    console.log(`%cwrong input format`, `color:red`);
    person[index] = prompt(`Enter your ${inputField} again`);
  }
}

let person = [];

let nameRgex = /^[a-zA-Z]+$/;
getData(0, "name", nameRgex);

console.log(`username: ${person[0]}`);
