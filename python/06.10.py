T = []
n= int(input("Podaj ilosc elementow listy: "))
for i in range(n):
    T.append(int(input()))
print(T)
s = 0
for i in range(0,n):
    s+=T[i]
print("Suma wynosi: ",s)
