let calc = () => {
    const amount = document.getElementById("numberinput").value
    const radio = document.getElementsByClassName("radio")

    if (radio[0].checked) {
        console.log('z')
        let result = amount * (57.94)
        console.log(result)
        document.getElementById("wynik").innerHTML = result + "zł"
    } else if (radio[1].checked) {
        console.log('bez')
        let result = amount * (42.36)
        console.log(result)
        document.getElementById("wynik").innerHTML = result + "zł"
    }
}