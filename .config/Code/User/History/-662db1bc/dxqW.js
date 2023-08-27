function setColor() {
  let red = document.getElementById(`redRange`).value;
  let green = document.getElementById(`greenRange`).value;
  let blue = document.getElementById(`blueRange`).value;

  console.log(`red = ${red}`);
  console.log(`green = ${green}`);
  console.log(`blue = ${blue}`);

  document.getElementById(`d1`).style = `color:rgb(${red}, ${green}, ${blue})`;
}
