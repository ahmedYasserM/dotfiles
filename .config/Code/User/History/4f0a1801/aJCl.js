let weather;

function doWeather(w) {
  weather = w;
  console.log(weather);
}

function getWeather() {
  setTimeout((callback) => {
    callback("sunny");
  }, 1000);
}

getWeather(doWeather);