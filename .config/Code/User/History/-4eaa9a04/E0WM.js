let btn = document.getElementById(`submit`);
console.log(btn);

btn.onclick = function () {
  document.write(`<hl>`);
  let cont = document.getElementById(`container`);
  cont.innerHTML = document.getElementById(`username`).Value;
};
