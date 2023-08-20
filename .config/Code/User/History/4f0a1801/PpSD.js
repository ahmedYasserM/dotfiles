function renderElement(id) {
  setTimeout(() => {
    document.getElementById(id).style.visibility = "visible";
  }, 1000);
}


let pp = new Promise((resolve, reject) => {
    renderElement(id)
});