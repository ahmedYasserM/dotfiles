let w1;
function openWin() {
  w1 = window.open("", "", "width=300,height=300");
  w1.document.bgColor = "violet";
}

function moveWin() {
  w1.moveBy(200, 100);
  w1.focus();
}

function closeWin() {
  w1.close();
}
