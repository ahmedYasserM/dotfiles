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
  }
}
