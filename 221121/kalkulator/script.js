x = '';
z = '';
y = 0;

wynik = 0;

function zczytywanie(numer){
   

   if (wyswietlacz.textContent.trim() === x ) {
    x = x + numer;
    document.getElementById("wyswietlacz").innerHTML = x;
    }
    else{
        
        z = z + numer;
        if(wynik==1){
            document.getElementById("wyswietlacz").innerHTML = y + "+" + z;
        }
        if(wynik==2){
            document.getElementById("wyswietlacz").innerHTML = y + "-" + z;
        }
        if(wynik==3){
            document.getElementById("wyswietlacz").innerHTML = y + "*" + z;
        }
        if(wynik==4){
            document.getElementById("wyswietlacz").innerHTML = y + "/" + z;
        }
    }

  
}

function dodawanie(){
   y = parseInt(x);
    wynik = 1;
   if (wyswietlacz.textContent.trim() === '') {
    console.log('✅ Element is empty');
    } else {
    document.getElementById("wyswietlacz").innerHTML = y + "+" + "";
    }
}
function odejmowanie(){
    y = parseInt(x);
     wynik = 2;
    if (wyswietlacz.textContent.trim() === '') {
     console.log('✅ Element is empty');
     } else {
     document.getElementById("wyswietlacz").innerHTML = y + "-" + "";
     }
 }

 function mnozenie(){
    y = parseInt(x);
     wynik = 3;
    if (wyswietlacz.textContent.trim() === '') {
     console.log('✅ Element is empty');
     } else {
     document.getElementById("wyswietlacz").innerHTML = y + "*" + "";
     }
 }

 function dzielenie(){
    y = parseInt(x);
     wynik = 4;
    if (wyswietlacz.textContent.trim() === '') {
     console.log('✅ Element is empty');
     } else {
     document.getElementById("wyswietlacz").innerHTML = y + "/" + "";
     }
 }


function end(){
    if(wynik==1){
        document.getElementById("wyswietlacz").innerHTML = y + "+" + z + "=" + (parseInt(y) + parseInt(z));
    }
    if(wynik==2){
        document.getElementById("wyswietlacz").innerHTML = y + "-" + z + "=" + (parseInt(y) - parseInt(z));
    }
    if(wynik==3){
        document.getElementById("wyswietlacz").innerHTML = y + "*" + z + "=" + (parseInt(y) * parseInt(z));
    }
    if(wynik==4){
        
        document.getElementById("wyswietlacz").innerHTML = y + "/" + z + "=" + (parseFloat(y) / parseFloat(z));
        
    
    }
}