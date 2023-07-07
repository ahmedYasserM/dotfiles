const fs = require("fs");
const { platform } = require("os");
const { fileURLToPath } = require("url");

// let f1 = fs.readFileSync("./content/file1.md", "utf-8");

// let f2 = fs.readFileSync("./content/file2.md", "utf8");

// let result = `## Hello from Result File\n\n${f1}\n${f2}\n`;

// fs.writeFileSync("./content/resultFile.md", result, {flag: 'a', encoding: 'utf8'});

let f1 = "";
fs.readFile("./content/file1.md", "utf8", (err, fileData) => {
  if (err === true) {
    console("Can not read from ./content/file1.md!");
    return;
  }

  console.log(`file 1: ${fileData}`);
});
