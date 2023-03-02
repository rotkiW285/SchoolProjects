def czy_pierwsza (n):
    for i in range(2,n):
        if n%i==0:
            return True
        return False
n = int(input("podaj n: "))
print(czy_pierwsza(n))
def dzielnik (n):
    for i in range(1,n+1):
        if n%i==0:
            print(i)
print(dzielnik(n))
