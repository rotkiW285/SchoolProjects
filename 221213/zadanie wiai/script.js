itemCount = 0;

itemList = [];

item1Count = 0;
item2Count = 0;
item3Count = 0;
item4Count = 0;
item5Count = 0;
item6Count = 0;

function addToCart(x){
    itemCount = itemCount + 1;

    itemList.push(x);

    switch (true) {
        case x==1:
            item1Count++;
          break;
        case x==2:
            item2Count++;
          break;
        case x==3:
            item3Count++;
          break;
        case x==4:
            item4Count++;
          break;
        case x==5:
            item5Count++;
          break;
        case x==6:
            item6Count++;
          break;
    }
    document.getElementById("item-amount").innerHTML = itemCount;
    console.log(itemList)
}

function viewCart(){

    document.getElementById("main").style.display = "none";
    document.getElementById("cartPage").style.display = "flex";

    if(item1Count>0){
        document.getElementById("cart1Item").style.display = "flex";
    }
    if(item2Count>0){
        document.getElementById("cart2Item").style.display = "flex";
    }
    if(item3Count>0){
        document.getElementById("cart3Item").style.display = "flex";
    }
    if(item4Count>0){
        document.getElementById("cart4Item").style.display = "flex";
    }
    if(item5Count>0){
        document.getElementById("cart5Item").style.display = "flex";
    }
    if(item6Count>0){
        document.getElementById("cart6Item").style.display = "flex";
    }
    
    document.getElementById("Qty1").innerHTML = item1Count;
    document.getElementById("Qty2").innerHTML = item2Count;
    document.getElementById("Qty3").innerHTML = item3Count;
    document.getElementById("Qty4").innerHTML = item4Count;
    document.getElementById("Qty5").innerHTML = item5Count;
    document.getElementById("Qty6").innerHTML = item6Count;

    document.getElementById("price1").innerHTML = parseFloat(item1Count * 899).toFixed(2);
    document.getElementById("price2").innerHTML = parseFloat(item2Count * 699).toFixed(2);
    document.getElementById("price3").innerHTML = parseFloat(item3Count * 299).toFixed(2);
    document.getElementById("price4").innerHTML = parseFloat(item4Count * 499).toFixed(2);
    document.getElementById("price5").innerHTML = parseFloat(item5Count * 1699).toFixed(2);
    document.getElementById("price6").innerHTML = parseFloat(item6Count * 2299).toFixed(2);

    document.getElementById("total").innerHTML =  "Total:  " + parseFloat(
        item1Count * 899 +
        item2Count * 699 + 
        item3Count * 299 + 
        item4Count * 499 + 
        item5Count * 1699 + 
        item6Count * 2299
    ).toFixed(2) + " zł"
}