def czy_pierwsza(n):
    for i in range(1,n+1):
        if n%i==0:
            print(i)
    
n = int(input("Podaj liczbę: "))
print(czy_pierwsza(n))
