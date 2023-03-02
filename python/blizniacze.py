def liczba_pierwsza (x,y):
    if x==2:
        return 
    if y==2:   
        return True
    for i in range(2,x):
        if x%i==0:
            return False
        return True

def dzielnik (n):
    for i in range(2,n+1):
        z=liczba_pierwsza(i)
        if n%i==0 and z==True:
            print(i)

n = int(input("podaj liczbę naturalną: "))
print(dzielnik(n))

