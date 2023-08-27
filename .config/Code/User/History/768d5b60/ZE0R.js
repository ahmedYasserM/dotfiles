// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(
    `click`,
    function (evt) {
      //   evt.stopPropagation();
      console.log(`Event Target: `, evt.target);
      console.log(`Event Type: ${evt.type}`);
      console.log(`Unicode value: ${evt.which}`);
      div.style = `background-color: white;`;
      console.log(`%cDiv ID: ${div.id}`, `color:violet`);
      console.log(`---------------------------------`);
    },
    { capture: false }
  );
});
