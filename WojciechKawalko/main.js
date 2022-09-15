let funkcja = () => {
    let rodzaj = document.getElementById('rodzaj-paliwa').value
    let ile = document.getElementById('ile-litrow').value

    let wynik = document.getElementById('wynik')

    if (rodzaj == 1) {
        let koszt_litr = 4 
        wynik.innerHTML = "koszt paliwa: " + koszt_litr * ile + " zł"
    } else if (rodzaj == 2) {
        let koszt_litr = 3.5
        wynik.innerHTML = "koszt paliwa: " + koszt_litr * ile + " zł"
    } else {
        let koszt_litr = 0
        wynik.innerHTML = "koszt paliwa: " + koszt_litr * ile + " zł"
    }
}