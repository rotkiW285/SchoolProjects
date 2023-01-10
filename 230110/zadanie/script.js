
setInterval(() => {
    text = document.getElementById("textarea").value;
    rozmiar = document.getElementById("textinput").value;
    styl = document.getElementById("stilo").value;

    document.getElementById("textarea").style.fontSize = parseInt(rozmiar) + "px";
    if(styl == 1){
        document.getElementById("textarea").style.fontStyle = ""
    }
    else if(styl==2){
        document.getElementById("textarea").style.fontStyle = "italic"
    }
    
    document.getElementById("textarea").style.color = color;

    console.log(styl);
}, 100);

var color = "black"
function Kolor(x){
    console.log(x)
    if(x == 1){
        color = "red";
    }
    else if(x == 2){
        color = "green";
    }
    else if(x ==3 ){
        color = "blue";
    }
}