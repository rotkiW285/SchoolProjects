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
        if(c<=18.5){
            document.getElementById("waga").innerHTML = "<span style='color: red;'>BMI za mało</span>";
        }
        else{
            if(c>=25){
                document.getElementById("waga").innerHTML = "<span style='color: red;'>BMI za dużo</span>";
            }
            else{
                document.getElementById("waga").innerHTML = "<span style='color: green;'>BMI w normie!</span>";
            }
        }
        }
}