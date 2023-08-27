let imgIndex = 1;
function nextImg() {
  imgIndex = ++imgIndex === 7 ? 1 : imgIndex;
  console.log(`img index: ${imgIndex}`);
  document.images[0].src = `../res/imgs/${imgIndex}.jpg`;
}

function prevImg() {
  imgIndex = --imgIndex === 0 ? 6 : imgIndex;
  console.log(`img index: ${imgIndex}`);
  document.images[0].src = `../res/imgs/${imgIndex}.jpg`;
}

let id;
function slideImg() {
  id = setInterval(() => nextImg(), 1000);
}

function stopSlide() {
  clearInterval(id);
}
