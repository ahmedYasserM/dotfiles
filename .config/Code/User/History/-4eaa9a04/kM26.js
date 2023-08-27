let btn = document.getElementById(`btn`);

btn.onclick = function () {
  let cont = document.getElementById(`container`);
  cont.innerHTML = document.getElementById(`username`).value;
};
