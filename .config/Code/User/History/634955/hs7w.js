let vid = document.getElementsByTagName(`video`)[0];

function playVid() {
  vid.play();
}

function stopVid() {
  vid.pause();
}

function speedUp() {
  if (vid.playbackRate < 3) {
    console.log(`speed up`);
    vid.playbackRate += 0.5;
  }
}

function speedDown() {
  if (vid.playbackRate > 0) {
    console.log(`speed down`);

    vid.playbackRate -= 0.5;
  }
}

function volDown() {
  if (vid.volume > 0) {
    console.log(`volume down`);

    vid.volume -= 0.1;
  }
}

function volUp() {
  if (vid.volume < 1) {
    console.log(`volume up`);
    vid.volume += 0.1;
  }
}

function muteVid() {
  vid.muted = vid.muted === true ? false : true;
}
