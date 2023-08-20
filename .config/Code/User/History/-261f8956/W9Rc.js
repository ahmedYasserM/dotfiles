let rid = Number.parseFloat(prompt(`Enter the radius of the circle`));
window.alert(`The area of the circle is: ${Math.PI * (rid * rid)}`);

let num = Number.parseFloat(prompt(`Enter the value you want to calculate its square root`));
window.alert(`The square root of ${num} is ${Math.sqrt(num)}`);


function toRadian(dAngle) {
  return dAngle * (Math.PI / 180);
}

let angle = Number.parseFloat(prompt(`What is the angle you want to calculate its cos value`));
document.write(`<h3> cos ${angle}<sup>o</sup> is ${Math.cos(toRadian(angle)).toFixed(2)} </h3>`);
