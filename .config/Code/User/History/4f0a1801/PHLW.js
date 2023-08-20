let weather;

function doWeather(w) {
  weather = w;
  console.log(weather);
}

function getWeather(callback) {
  setTimeout(() => {
    callback("sunny");
  }, 1000);
}

getWeather(doWeather);