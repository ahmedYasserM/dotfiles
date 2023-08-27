console.log(document.getElementById(`redRange`).value);
console.log(document.getElementById(`greenRange`).value);
console.log(document.getElementById(`blueRange`).value);

function setColor() {
  let red = document.getElementById(`redRange`).value;
  let green = document.getElementById(`greeenRange`).value;
  let blue = document.getElementById(`blueRange`).value;

  console.log(`red = ${red}`);
  console.log(`green = ${green}`);
  console.log(`blue = ${blue}`);

  document.getElementById(`d1`).style = `color:rgb(${red}, ${green}, ${blue})`;
}
