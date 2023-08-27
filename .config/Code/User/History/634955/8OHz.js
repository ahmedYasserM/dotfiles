let vid = document.getElementsByTagName(`video`)[0];

function playVid() {
  vid.play();
}

function stopVid() {
  vid.pause();
}

function volDown() {
  vid.volume -= 5;
}

function volUp() {
  vid.volume += 5;
}

function muteVid() {
  vid.muted = true;
}
