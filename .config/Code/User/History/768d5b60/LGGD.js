// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(
    `click`,
    function (evt) {
      //   evt.stopPropagation();
    console.log(`the elment that fired the event is: ${evt}`)
      div.style = `background-color: white;`;
      console.log(`%cDiv ID: ${div.id}`, `color:violet`);
    },
    { capture: false }
  );
});
