let red = document.getElementById(`redRange`).value;
let greeen = document.getElementById(`greeenRange`).value;
let blue = document.getElementById(`blueRange`).value;

document.getElementsByTagName(`div`)[0].style = `color:${rgb(red, green, blue)}`

