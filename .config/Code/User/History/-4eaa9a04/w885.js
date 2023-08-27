let btn = document.getElementById(`btn`);

btn.onclick = function () {
  let cont = document.getElementById(`container`);

    cont.innerHTML = `<hr>`;
  cont.innerHTML += "<h1>Nice to see you: </h1>" + document.getElementById(`<h1>username</h1>`).value;
  cont.innerHTML += "<h1>Your email is: </h1>" + document.getElementById(`<h1>email</h1>`).value;
};
