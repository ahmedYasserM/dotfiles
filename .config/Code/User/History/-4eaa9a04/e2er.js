let btn = document.getElementById(`btn`);

btn.onclick = function () {
  let cont = document.getElementById(`container`);
  cont.innerHTML = "Nice to see you: " + document.getElementById(`username`).value;
  cont.innerHTML = "Your email is: " + document.getElementById(`email`).value;

};
