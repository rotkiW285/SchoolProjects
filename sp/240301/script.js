function suma(){
    var suma=0;
    var p1 = document.getElementById("pierw").checked;
    var p2 = document.getElementById("drug").checked;
    var p3 = document.getElementById("trzec").checked;
    var p4 = document.getElementById("czwar").checked;
    var p5 = document.getElementById("piat").checked;
    var p6 = document.getElementById("szost").checked;
    var p7 = document.getElementById("siodm").checked;
    var p8 = document.getElementById("osme").checked;
    var p9 = document.getElementById("dziew").checked;
    var p10 = document.getElementById("dzies").checked;
    var p11 = document.getElementById("jedenas").checked;
    var p12 = document.getElementById("dwana").checked;
    var p13 = document.getElementById("trzyna").checked;
    var p14 = document.getElementById("czterna").checked;
    var p15 = document.getElementById("pietna").checked;
    if (p1){
        suma=suma+1;
    }
    if (p2){
        suma=suma+1;
    }
    if (p3){
        suma=suma+1;
    }
    if (p4){
        suma=suma+1;
    }
    if (p5){
        suma=suma+1;
    }
    if (p6){
        suma=suma+1;
    }
    if (p7){
        suma=suma+1;
    }
    if (p8){
        suma=suma+1;
    }
    if (p9){
        suma=suma+1;
    }
    if (p10){
        suma=suma+1;
    }
    if (p11){
        suma=suma+1;
    }
    if (p12){
        suma=suma+1;
    }
    if (p13){
        suma=suma+1;
    }
    if (p14){
        suma=suma+1;
    }
    if (p15){
        suma=suma+1;
    }

    document.getElementById("wynik").innerHTML=suma;
}