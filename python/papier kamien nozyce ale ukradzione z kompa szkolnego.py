from random import randint
t = ["kamień", "papier", "nożyce"]
komputer = t[randint(0,2)]
gracz = False
while gracz == False:
    gracz = input("kamień, papier, nożyce?")
    if gracz == komputer:
        print("remis!")
    elif gracz == "kamień":
        if komputer == "papier":
            print("przegrałeś!", komputer, "tnie", gracz)
        else:
            print("wygrałeś!", gracz, "tępi", komputer)
    elif gracz == "papier":
        if komputer == "nożyce":
            print("przegrałeś!", komputer, "tna", gracz)
        else:
            print("wygrałeś!", gracz, "tnie", komputer)
    elif gracz == "nożyce":
        if komputer == "kamień":
            print("przegrałeś...", komputer, "tępi", gracz)
        else:
            print("wygrałeś!", gracz, "tna", komputer)
    else:
        print("Coś poszło nie tak")
    gracz = False
    komputer = t[randint(0,2)]