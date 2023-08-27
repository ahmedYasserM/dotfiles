let vid = document.getElementsByTagName(`video`)[0];

function playVid() {
  vid.play();
}

function stopVid() {
  vid.pause();
}

function speedUp() {
  console.log(`speed up`)
  if (vid.playbackRate < 1) {
    vid.playbackRate += 0.2;
  }
}

function speedDown() {
  console.log(`speed down`)
  if (vid.playbackRate > 0) {
    vid.playbackRate -= 0.2;
  }
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
