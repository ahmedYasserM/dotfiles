let w1;
function openWin() {
  let w1 = window.open("", "", "width=300,hight=300");
  w1.document.bgColor = "violet";
}

function moveWin() {
  w1.moveTo(100, 100);
}
