const fs = require("fs");

let PATH = "./content/file1.md";

const getText = function (path) {
  return new Promise((resolve, reject) => {
    fs.readFile(path, { encoding: "utf8" }, (err, data) => {
      if (err !== null) {
        reject(err);
      } else {
        resolve(data);
      }
    });
  });
};

let f1Data;
let f2Data;

getText(PATH)
  .then((data) => (f1Data = data))
  .catch((err) => console.log(err));

PATH = "./content/file2.md";

getText(PATH)
  .then((data) => (f2Data = data))
  .catch((err) => console.log(err));

const appendText = function (path, data) {
  return new Promise((reolve, reject) => {
    fs.writeFile(path, data, { encoding: "utf8", flag: "a" }, (err, result) => {
      if (err !== null) {
        reject(err);
      } else {
        reolve(result);
      }
    });
  });
};

PATH = "./content/resultFile.md";

text = f1Data + f2Data;

appendText(PATH, text)
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
