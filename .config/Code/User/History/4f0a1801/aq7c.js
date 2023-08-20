let renderElement = function (id) {
 return new Promise((resolve, reject) => {
    setTimeout(() => {
      document.getElementById(id).style.visibility = "visible";
    }, 1000);
  });
};
