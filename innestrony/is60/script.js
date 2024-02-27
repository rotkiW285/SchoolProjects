let m = document.getElementById("minuty");
let s = document.getElementById("sekundy");
let ms = document.getElementById("milisekundy");
let a = 0;
let b = 0;
let c = 0;
let myInterval;
let kupa = true;

function time() {
    a++;
    a.toString();
    if (a===100) {
        a = 0;
        b++;
    }
    if (b===60) {
        b = 0;
        c++;
    }
    ms.innerHTML = a.toString().padStart(2, "0");
    s.innerHTML = b.toString().padStart(2, "0") + ":";
    m.innerHTML = c.toString().padStart(2, "0") + ":";
}

function start() {
    if (kupa) {
        myInterval =  setInterval(time, 10);
        kupa = false;
    }
}

function reset() {
    clearInterval(myInterval);
    a = 0;
    b = 0;
    c = 0;
    ms.innerHTML = a.toString().padStart(2, "0");
    s.innerHTML = b.toString().padStart(2, "0") + ":";
    m.innerHTML = c.toString().padStart(2, "0") + ":";
    kupa = true;
}

function stop() {
    clearInterval(myInterval);
    kupa = true;
}