let renderElement = function (id) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      document.getElementById(id).style.visibility = "visible";
    }, 1000);
    resolve();
  });
};

renderElement("item1").then(renderElement("item2")).then(renderElement("item3")).then(renderElement("item4"));
