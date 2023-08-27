let vid = document.getElementsByTagName(`video`)[0];

function playVid() {
  vid.play();
}

function stopVid() {
  vid.pause();
}

function volDown() {
  if (vid.volume > 0) {
    vid.volume -= 0.1;
  }
}

function volUp() {
  if (vid.volume < 1) {
    vid.volume += 0.1;
  }
}

function muteVid() {
  vid.muted = vid.muted === true ? false : true;
}
