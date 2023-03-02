a = int(input("Podaj liczbe: "))
r = a%10
print ("Liczba jednosci: ", r)
d=(a%100-a%10)/10
print("Liczba dziesiatek: ", d)
s=(a%1000-a%100)/100
print ("Cyfra setek: ", s)
v=(a%10000-a%1000)/1000
print ("Cyfra tysiecy: ", v)
