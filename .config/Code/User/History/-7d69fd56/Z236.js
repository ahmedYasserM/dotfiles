function writeVal(val) {
  document.getElementById("txt1").value += val.trim();
}

function delNum() {
  let tbox = document.getElementById(`txt1`);
  tbox.value = tbox.value.substring(0, tbox.value.length - 1);
}

function delAll() {
  document.getElementById(`txt1`).value = "";
}
