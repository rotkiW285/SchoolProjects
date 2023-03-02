t=[]
n=int(input("Podaj ilosc elementów listy: "))
for i in range(n):
    t.append(int(input()))   
print(t)
for i in range(1,n+1):
    print(t[-i])
s=0
il=1
for i in range(n):
    if t[i]%2==0:
        s+=t[i]
    if t[i]>2:
        il*=t[i]
print("Suma wynosi: ",s)
print("iloczyn wynosi: ",il)
