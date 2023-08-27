// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(`click`, (evt) => {
    div.style = `background-color: white;`;
      console.log(`Div ID: ${div.id}`)
  });
});
