let renderElement = function (id) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      document.getElementById(id).style.color = "red";
      resolve();
    }, 1000);
    // console.log("id: ", id);
  });
};

renderElement("item1").then(renderElement("item2")).then(renderElement("item3")).then(renderElement("item4"));
