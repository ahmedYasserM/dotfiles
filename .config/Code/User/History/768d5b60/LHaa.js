// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(
    `click`,
    function (evt) {
      //   evt.stopPropagation();
      console.log(evt.srcElement);
      div.style = `background-color: white;`;
      console.log(`%cDiv ID: ${div.id}`, `color:violet`);
    },
    { capture: false }
  );
});
