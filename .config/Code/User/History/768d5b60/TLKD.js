// function clickMe(div) {
//   console.log(`%c Div Id: ${div.id}`, `color:red`);
// }

let divs = document.getElementsByTagName(`div`);
divs.foreach((div)=>{
    div.addEventListener(`click`,()=>{
        console.log()
    })
    
})