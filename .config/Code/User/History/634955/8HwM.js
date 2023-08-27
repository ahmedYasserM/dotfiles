let vid = document.getElementsByTagName(`video`)[0];

function playVid() {
  vid.play();
}

function stopVid() {
  vid.pause();
}

function volDown() {
  if (vid.volume >= 0) {
    vid.volume -= 0.1
  }
}

function volUp() {
  console.log(`volume up`);
  vid.volume += 0.5;
}

function muteVid() {
  vid.muted = true;
}
