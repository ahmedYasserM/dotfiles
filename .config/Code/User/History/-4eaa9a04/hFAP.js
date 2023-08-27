let btn = document.getElementById(`btn`);

btn.onclick = function () {
  let cont = document.getElementById(`container`);

  cont.innerHTML = `<hr>`;
  cont.innerHTML += `<h1>Nice to see you: ${document.getElementById(`username`).value}</h1>`;
  cont.innerHTML += `<h1>Your email is: ${document.getElementById(`email`).value}</h1>`;
};
