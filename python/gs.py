a= int(input("Podaj liczbę: "))
r=a%10
print("liczba jedności: ",r )
'''(376%100-376%10)/10=(76-6)/10=7'''
d=(a%100-a%10)/10
print("liczba dziesiątek: ",d)
s=(a%1000-a%100)/100
print("cyfra setek: ",s)
