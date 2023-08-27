// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.getElementsByTagName(`div`);

let len = divs.length;

for (let i = 0; i < len; i++) {
  divs[i].addEventListener(
    `click`,
    () => {
      event.stopPropagation();
      console.log(`%c Div Id: ${divs[i].id}`, `color:red`);
    },
    false
  );
}
