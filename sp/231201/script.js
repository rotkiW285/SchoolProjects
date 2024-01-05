function bmi(){
    let a = document.getElementById("a").value;
    let b = document.getElementById("b").value;
    if (a=="" || b=="") {
        document.getElementById("bmiwynik").innerHTML = "<span style='color: red;'>Nie wpisałeś wartości </span>";
    }
    else {
        a = parseFloat(a);
        b = parseFloat(b);
        d=b/100
        c=a/(d*d)
        document.getElementById("bmiwynik").innerHTML = c.toFixed(2);
        if(c<=16){
            document.getElementById("waga").innerHTML = "<span style='color: red;'>Wygłodzenie</span>";
        }
        else if(c>16 && c<=16.9){
            document.getElementById("waga").innerHTML = "<span style='color: orange;'>Wychudzenie</span>";
        }
        else if(c>17 && c<=18.4){
            document.getElementById("waga").innerHTML = "<span style='color: yellow;'>Niedowaga</span>";
        }
        else if(c>=18.5 && c<=24.9){
            document.getElementById("waga").innerHTML = "<span style='color: green;'>Waga prawidłowa</span>";
        }
        else if(c>=25 && c<=29.9){
            document.getElementById("waga").innerHTML = "<span style='color: yellow;'>Nadwaga</span>";
        }
        else if(c>=30 && c<=34.9){
            document.getElementById("waga").innerHTML = "<span style='color: orange;'>Otyłość I stopnia</span>";
        }
        else if(c>=35 && c<=39.9){
            document.getElementById("waga").innerHTML = "<span style='color: red;'>Otyłość II stopnia</span>";
        }
        else{
            document.getElementById("waga").innerHTML = "<span style='color: black;'>Otyłość skrajna</span>";
        }
    }
}