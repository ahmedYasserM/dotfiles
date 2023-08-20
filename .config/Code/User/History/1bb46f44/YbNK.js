function getData(inputVar, inputField, inputRgex) {
  do {
    person.inputVar = prompt(`Enter your ${inputField}`);
  } while (!inputRgex.test(inputVar));
}

let person = {
  userName: undefined,
  pNum: undefined,
  mNum: undefined,
  email: undefined,
};

let person = []
// let nameRgex = /^[a-zA-Z]+$/;
// getData("userName","name", nameRgex);

// console.log(`username: ${person.userName}`);

person.userName = "Gamil";
console.log(person[0]);
