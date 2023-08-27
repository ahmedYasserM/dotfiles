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

function ChangeIndent(indent) {
  switch (indent) {
    case `0px`:
      text.style = `text-indent: 0px`;
      break;
    case `5px`:
      text.style = `text-indent: 5px`;
      break;
    case `15px`:
      text.style = `text-indent: 15px`;
      break;
    case `25px`:
      text.style = `text-indent: 25px`;
      break;
  }
}

function ChangeTransform(transform) {
  switch (transform) {
    case `none`:
      text.style = `text-transform: none`;
      break;
    case `capitalize`:
      text.style = `text-transform: capitalize`;
      break;
    case `uppercase`:
      text.style = `text-transform: uppercase`;
      break;
    case `lowercase`:
      text.style = `text-transform: lowercase`;
      break;
  }
}

function ChangeDecorate(decorate) {
  switch (decorate) {
    case `none`:
      text.style = `text-decoration: none`;
      break;
    case `line-through`:
      text.style = `text-decoration: line-through`;
      break;
    case `overline`:
      text.style = `text-decoration: overline`;
      break;
    case `underline`:
      text.style = `text-decoration: underline`;
      break;
  }
}

function ChangeBorder(border) {
  switch (border) {
    case `none`:
      text.style = `border-style: none`;
      break;
    case `dotted`:
      text.style = `border-style: dotted`;
      break;
    case `double`:
      text.style = `border-style: double`;
      break;
    case `groove`:
      text.style = `border-style: groove`;
      break;
    case `dashed`:
      text.style = `border-style: dashed`;
      break;
    case `insert`:
      text.style = `border-style: insert`;
      break;
    case `solid`:
      text.style = `border-style: solid`;
      break;
    case `outset`:
      text.style = `border-style: outset`;
      break;
    case `ridge`:
      text.style = `border-style: ridge`;
      break;
  }
}

function ChangeBorderColor(color) {
  switch (color) {
    case `none`:
      text.style = `border-color: none`;
      break;
    case `pink`:
      text.style = `border-color: pink`;
      break;
    case `red`:
      text.style = `border-color: red`;
      break;
    case `green`:
      text.style = `border-color: green`;
      break;
    case `blue`:
      text.style = `border-color: blue`;
      break;
    case `yellow`:
      text.style = `border-color: yellow`;
      break;
    case `purple`:
      text.style = `border-color: purple`;
      break;
  }
}
