function writeVal(val) {
  document.getElementById("txt1").value += val.trim();
}

function delNum() {
  let tbVal = document.getElementById(`txt1`).value;
  console.log(typeof tbVal);
  tbVal = tbVal.charAt(tbVal.length - 1);
  console.log(tbVal);
}
