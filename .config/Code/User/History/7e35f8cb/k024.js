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

function ChangeHeight(height) {
  switch (height) {
    case `normal`:
      text.style = `line-height: normal`;
      break;
    case `10px`:
      text.style = `line-height: 10px`;
      break;
    case `15px`:
      text.style = `line-height: 15px`;
      break;
    case `1.5`:
      text.style = `line-height: 1.5`;
      break;
  }
}

function ChangeLSpace(space) {
  switch (space) {
    case `normal`:
      text.style = `letter-spacing: normal`;
      break;
    case `-1px`:
      text.style = `letter-spacing: -1px`;
      break;
    case `2px`:
      text.style = `letter-spacing: 2px`;
      break;
    case `3px`:
      text.style = `letter-spacing: 3px`;
      break;
  }
}
