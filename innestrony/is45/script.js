var counter = 0;

function validate(){
    switch (true){
        case document.forms['test']['que1'].value == 1:
            counter++;
        case document.forms['test']['que2'].value == 1:
            counter++;
        case document.forms['test']['que3'].value == 1:
            counter++;
        case document.forms['test']['que4'].value.toUpperCase() == "SZOTA":
            counter++;
        
            
    }

    document.getElementById("main").style.display = "none";
    document.getElementById("wynik").style.display = "block";
    document.getElementById("wynik").innerHTML = counter + "/4";
    console.log(counter)
}