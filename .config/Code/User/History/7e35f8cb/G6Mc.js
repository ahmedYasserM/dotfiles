let text = document.getElementById(`PAR`);
function ChangeFont(font) {
  switch (font) {
    case `arial`:
      text.style = `font-family: areal`;
      break;
    case `courier`:
      text.style = `font-family: courier`;
      break;
    case `georgia`:
      text.style = `font-family: georgia`;
      break;
    case `impact`:
      text.style = `font-family: impact`;
      break;
    case `times new roman`:
      text.style = `font-family: times new roman`;
      break;
    case `verdana`:
      text.style = `font-family: verdana`;
      break;
  }
}

function ChangeAlign(align) {
  switch (align) {
    case `left`:
      text.style = `text-align: left`;
      break;
    case `right`:
      text.style = `text-align: right`;
      break;
    case `center`:
      text.style = `text-align: center`;
      break;
    case `justify`:
      text.style = `text-align: justify`;
      break;
  }
}


function ChangeHeight() {
    
}