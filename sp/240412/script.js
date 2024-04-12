function sprawdz() {
  var p1 = f.p1.value;
  var p2 = f.p2.value;
  var p3 = f.p3.value;
  var p4 = f.p4.value;
  var p5 = f.p5.value;
  var p6 = f.p6.value;
  var p7 = f.p7.value;
  var p8 = f.p8.value;
  var p9 = f.p9.value;

  if (p1 == "o" && p2 == "o" && p3 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p4 == "o" && p5 == "o" && p6 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p7 == "o" && p8 == "o" && p9 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p1 == "o" && p4 == "o" && p7 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p2 == "o" && p5 == "o" && p8 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p3 == "o" && p6 == "o" && p9 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p1 == "o" && p5 == "o" && p9 == "o") {
    window.alert("Wygrało kółko!");
  } else if (p3 == "o" && p5 == "o" && p7 == "o") {
    window.alert("Wygrało kółko!");}

    else if (p1 == "x" && p2 == "x" && p3 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p4 == "x" && p5 == "x" && p6 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p7 == "x" && p8 == "x" && p9 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p1 == "x" && p4 == "x" && p7 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p2 == "x" && p5 == "x" && p8 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p3 == "x" && p6 == "x" && p9 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p1 == "x" && p5 == "x" && p9 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (p3 == "x" && p5 == "x" && p7 == "x") {
      window.alert("Wygrał krzyżyk!");
    } else if (
      p1 != "" &&
      p2 != "" &&
      p3 != "" &&
      p4 != "" &&
      p5 != "" &&
      p6 != "" &&
      p7 != "" &&
      p8 != "" &&
      p9 != ""
    ) {
      window.alert("REMIS");
    }
  }