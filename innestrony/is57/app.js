function time(){
    time1 = new Date();
    minutes = document.getElementById('min');
    seconds = document.getElementById('sec');
    hours = document.getElementById('hrs');
    days = document.getElementById('day');
    dayweek = document.getElementById('dayofweek');
    month = document.getElementById('month');
    year = document.getElementById('year');
    sec=time1.getSeconds();
    min=time1.getMinutes();
    hrs=time1.getHours();
    daw=time1.getDay();
    day=time1.getDate();
    moa=time1.getMonth();
    yre=time1.getFullYear();
    
    seconds.innerHTML=sec;
    minutes.innerHTML=min;
    hours.innerHTML=hrs;
    days.innerHTML=day;
    dayweek.innerHTML=daw;
    month.innerHTML=moa;
    year.innerHTML=yre;
    seconds.style="width:"+(100+sec*7.5)+"px;";
    minutes.style="width:"+(100+min*7.5)+"px;";
    hours.style="width:"+(100+hrs*7.5)+"px;";
    days.style="width:"+(100+day*7.5)+"px;";
    dayweek.style="width:"+(100+daw*7.5)+"px;";
    month.style="width:"+(100+moa*7.5)+"px;";
    year.style="width:"+(100+yre*0.1)+"px;";
    if(moa==0){
        month.innerHTML="I";
    }
    else if(moa==1){
        month.innerHTML="II";
    }
    else if(moa==2){
        month.innerHTML="III";
    }
    else if(moa==3){
        month.innerHTML="IV";
    }
    else if(moa==4){
        month.innerHTML="V";
    }
    else if(moa==5){
        month.innerHTML="VI";
    }
    else if(moa==6){
        month.innerHTML="VII";
    }
    else if(moa==7){
        month.innerHTML="VIII";
    }
    else if(moa==8){
        month.innerHTML="IX";
    }
    else if(moa==9){
        month.innerHTML="X";
    }
    else if(moa==10){
        month.innerHTML="XI";
    }
    else if(moa==11){
        month.innerHTML="XII";
    }
    if(daw==0){
        dayweek.innerHTML="Niedziela";
    }
    else if(daw==1){
        dayweek.innerHTML="Poniedziałek";
    }
    else if(daw==2){
        dayweek.innerHTML="Wtorek";
    }
    else if(daw==3){
        dayweek.innerHTML="Środa";
    }
    else if(daw==4){
        dayweek.innerHTML="Czwartek";
    }
    else if(daw==5){
        dayweek.innerHTML="Piątek";
    }
    else if(daw==6){
        dayweek.innerHTML="Sobota";
    }
}
setInterval('time()',1000);