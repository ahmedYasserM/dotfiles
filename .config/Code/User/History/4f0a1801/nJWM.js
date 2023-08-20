const fs = require("fs");

const PATH = "./content/file1.md";

const getText = new Promise((resolve, reject) => {
  fs.readFile(PATH, { encoding: "utf8" }, (err, data) => {
    if (err !== null) {
      reject(err);
    } else {
      resolve(data);
    }
  });
});

getText.then(())