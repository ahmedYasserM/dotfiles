function setColor() {
  let redRange = document.getElementById(`redRange`);
  let greenRange = document.getElementById(`greenRange`);
  let blueRange = document.getElementById(`blueRange`);



  document.getElementById(`d1`).style = `color:rgb(${redRange.value}, ${greenRange.value}, ${blueRange.value})`;
}
