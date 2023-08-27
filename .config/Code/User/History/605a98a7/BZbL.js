let btn = document.getElementById(`btn1`);

btn.onclick = function () {
  let win = open("", "_blank", `width=500,height=400,left=500,top=200`);
  let message = "typing message";
  let len = message.length;
  let i = 0;

  let id = setInterval(() => {
    win.document.write(`<span style="text-align:center;font-size:53pt;">${message[i]}</span>`);
    i++;
  }, 1000);

  setTimeout(() => {
    clearInterval(id);
    win.close();
  }, 15000);
};
