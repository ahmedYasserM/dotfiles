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


function error(err) {
    console.log(err);
}

getText("./content/file1.md")
  .then(getText("./content/file2.md"), error(err)).then
