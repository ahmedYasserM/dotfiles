let imgIndex = 1;
function nextImg() {
  imgIndex = (imgIndex + 1) % 7;
  imgIndex = imgIndex === 0 ? 1 : imgIndex;
  console.log(`img index: ${imgIndex}`);
  document.images[0].src = `../res/imgs/${imgIndex}.jpg`;
}

function prevImg() {}

function slideImg() {}

function stopSlide() {}
