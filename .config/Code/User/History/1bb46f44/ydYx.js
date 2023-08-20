function getData(index, inputField, inputRgex) {
  do {
    person[index] = prompt(`Enter your ${inputField}`);
  } while (!inputRgex.test(person[index]));
}

let person = []

let nameRgex = /^[a-zA-Z]+$/;
getData(0,"name", nameRgex);

console.log(`username: ${person[0]}`);
