def liczba_pierwsza (s):
    if s==2:
        return True
    for i in range(2,s):
        if y==2:   
            return True
    for i in range(2,x):
        if s%i==0:
            return False
        return True
def liczby_blizniacze(x,y):
    n=liczba_pierwsza(x)
    m=liczba_pierwsza(y)

    if n==True and m==True:
        if x-y==2 or y-x==2:
            print("Są to liczby bliźniacze")
    else:
        print("Nie są to liczby bliźniacze")

x=int(input("Podaj liczbę naturalną x: "))
y=int(input("Podaj liczbę naturalną y: "))
print(liczby_blizniacze(x,y))
