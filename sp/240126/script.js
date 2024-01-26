function koszt() {
    let a = document.getElementById("osoby").value;
    let b = document.getElementsByName("pole");
    let cena = 45;
    if(b[0].checked){
        cena += 30;
    }
    if(b[1].checked){
        cena += 20;
    }
    let total = a * cena;
    if(b[2].checked){
        total=total*0.8;
    }
    document.getElementById("wynik").innerHTML = "Koszt dla " + a + " osób to "  + total + " zł.";
}