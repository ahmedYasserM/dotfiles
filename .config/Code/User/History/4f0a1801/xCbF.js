const fs = require("fs");

const PATH = "./content/file1.md";

const getText = function (path) {
  return new Promise((resolve, reject) => {
    fs.readFile(PATH, { encoding: "utf8" }, (err, data) => {
      if (err !== null) {
        reject(err);
      } else {
        resolve(data);
      }
    });
  });
};

getText(PATH)
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
