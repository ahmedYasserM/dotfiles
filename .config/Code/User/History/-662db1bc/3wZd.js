function setColor() {
  let redRange = document.getElementById(`redRange`);
  let greenRange = document.getElementById(`greenRange`);
  let blueRange = document.getElementById(`blueRange`);

  redRange.style = `accent-color: rgb(${redRange.value}, 0, 0)`;
  greenRange.style = `accent-color: ${greenRange.value}`;
  blueRange.style = `accent-color: ${blueRange.value}`;
  document.getElementById(
    `d1`
  ).style = `color:rgb(${redRange.value}, ${greenRange.value}, ${blueRange.value})`;
}
