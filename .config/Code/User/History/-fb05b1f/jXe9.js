let imgIndex = 1;
function nextImg() {
  imgIndex = 1 + ((imgIndex + 1) % 6);
  console.log(`img index: ${imgIndex}`);
  document.images[0].src = `../res/imgs/${imgIndex}.jpg`;
}

function prevImg() {}

function slideImg() {}

function stopSlide() {}
