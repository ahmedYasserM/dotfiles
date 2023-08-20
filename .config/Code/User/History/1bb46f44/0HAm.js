let person = [];

function getData(index, inputField, inputRgex) {
  person[index] = prompt(`Enter your ${inputField}`);

  console.log(`regex test: ${inputRgex.test(person[index])}`);

  while (!inputRgex.test(person[index])) {
    console.log(`%cwrong input format`, `color:red`);
    person[index] = prompt(`Enter your ${inputField} again`);
  }
}

let nameRgex = /^[a-zA-Z]+$/;
// getData(0, "name", nameRgex);
// [0-9]{11}
let pNumRegex = /^((010|011|012|015)[0-9]){11}$/;
console.log(`regex test: ${pNumRegex.test(`01009612951`)}`);
// getData(1, "phone number", pNumRegex)
