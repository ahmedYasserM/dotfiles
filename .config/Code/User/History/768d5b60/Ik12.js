// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(`click`, (evt) => {
      evt.cancle
    div.style = `background-color: white;`;
    console.log(`%cDiv ID: ${div.id}`, `color:violet`);
  });
});
