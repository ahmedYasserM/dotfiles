let btn = document.getElementById(`btn`);

btn.onclick = function () {
  document.write(`<hr>`);
  let cont = document.getElementById(`container`);
  cont.innerHTML = document.getElementById(`username`).Value;
};
