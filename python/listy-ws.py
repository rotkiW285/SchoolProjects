'''
t =[3,4,7,19,3,6,0]
print(t)
for i in range (len(t)):
    print (t[i], end=' ')


' Odwrtotność chyba
t=[]
n = int(input("Podaj ilość elementów "))
for i in range(n):
    t.append(int(input()))
print(t)

for i in range(1,n+1):
    print(t[-i], end=' ')
    

'''

"""Zadanie:"""

t=[]
n = int(input("Podaj ilość elementów "))
for i in range(n):
    t.append(int(input()))
print(t)
#a
s=0
for i in range(n):
    s+=t[i]
    #s=s+t[i]
print("Suma to: ",s)
#b
sp = 0
for i in range(n):
    if t[i]%2==0:
        sp+=t[i]
print("Suma parzystych: ",sp)
#c
il=1
for i in range(n):
    if t[i]<8 and t[i]%2==1:
        il*=t[i]
print("Iloczyn to: ", il)
