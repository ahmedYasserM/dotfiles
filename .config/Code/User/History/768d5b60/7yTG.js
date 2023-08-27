let divs = document.querySelectorAll(`div`);
divs.forEach((div) => {
  div.addEventListener(
    `click`,
    function (evt) {
      evt.cancelBubble = false;
      div.style = `background-color: white;`;
      console.log(`%cDiv ID: ${div.id}`, `color:violet`);
      console.log(`---------------------------------`);
    },
    { capture: false }
  );
});
