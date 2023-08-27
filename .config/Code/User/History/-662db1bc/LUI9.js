function setColor(color) {
    
}
let red = document.getElementById(`redRange`).value;
let green = document.getElementById(`greeenRange`).value;
let blue = document.getElementById(`blueRange`).value;
console.log(`red value = ${red}`);

document.getElementById(`d1`).style = `color:${rgb(red, green, blue)}`;
