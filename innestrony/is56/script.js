var tura = 1;
var pola = [];
var Player1 = [];
var Player2 = [];

function start() {
    document.getElementById("start").style.animation = "Start 2s forwards ";
    document.getElementById("plansza").style.animation = "Start3 2s forwards ";

    setTimeout(() => {
        document.getElementById("start").style.display = "none"
    }, 1700);
}

function pole(x) {
    if (tura == 1 && pola.indexOf(x) === -1) {
        document.getElementById("okienko" + x).style.backgroundImage = "url(img/krzyz.png)";
        pola.push(x);
        Player1.push(x);
        tura = 2;
    }
    else if (tura == 2 && pola.indexOf(x) === -1) {
        document.getElementById("okienko" + x).style.backgroundImage = "url(img/kuko.png)";
        pola.push(x);
        Player2.push(x);
        tura = 1;
    }

    switch (true) {
        case Player1.includes(1) && Player1.includes(2) && Player1.includes(3) ||
            Player1.includes(1) && Player1.includes(4) && Player1.includes(7) ||
            Player1.includes(3) && Player1.includes(6) && Player1.includes(9) ||
            Player1.includes(7) && Player1.includes(8) && Player1.includes(9) ||
            Player1.includes(4) && Player1.includes(5) && Player1.includes(6) ||
            Player1.includes(1) && Player1.includes(5) && Player1.includes(9) ||
            Player1.includes(3) && Player1.includes(5) && Player1.includes(7) ||
            Player1.includes(8) && Player1.includes(5) && Player1.includes(2):
            console.log("p1 win")
            koniecGry(1);
            break;
        case Player2.includes(1) && Player2.includes(2) && Player2.includes(3) ||
            Player2.includes(1) && Player2.includes(4) && Player2.includes(7) ||
            Player2.includes(3) && Player2.includes(6) && Player2.includes(9) ||
            Player2.includes(7) && Player2.includes(8) && Player2.includes(9) ||
            Player2.includes(4) && Player2.includes(5) && Player2.includes(6) ||
            Player2.includes(1) && Player2.includes(5) && Player2.includes(9) ||
            Player2.includes(3) && Player2.includes(5) && Player2.includes(7) ||
            Player2.includes(8) && Player2.includes(5) && Player2.includes(2):
            console.log("p2 win")
            koniecGry(2)
            break;
        case pola.length == 9:
            koniecGry(3);
            break;
    }

}

function koniecGry(x) {
    var end = document.getElementById("koniecGry");
    var end2 = document.getElementById("koniecGryText");
    var plansza = document.getElementById("plansza");
    switch (true) {
        case x == 1:
            plansza.style.animation = "KoniecGry 3s forwards ";
            end.style.animation = "KoniecGry2 3s forwards ";
            end.style.display = "flex"
            end2.innerHTML = "Wygrał gracz z X";
            break;
        case x == 2:
            plansza.style.animation = "KoniecGry 3s forwards ";
            end.style.animation = "KoniecGry2 3s forwards ";
            end.style.display = "flex"
            end2.innerHTML = "Wygrał gracz z O";
            end.style.color = "red"
            break;
        case x == 3:
            plansza.style.animation = "KoniecGry 3s forwards ";
            end.style.animation = "KoniecGry2 3s forwards ";
            end.style.display = "flex"
            end2.innerHTML = "Remis";
            break;
    }
}