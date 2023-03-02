'''
napis = input("Podaj tekst: ")
def wypisz (napis):
    w=''
    for znak in napis:
        if znak !='a' and znak!='e':
            w+=znak
    return w


def wypisz_stare(napis):
    n=len(napis)
    for i in range (n):
        if napis[i]!='a' and napis[i]!='e':
            print (napis[i], end='')

print(wypisz (napis))
print (wypisz_stare(napis))
'''
'''napisz program wypisujacy wprowadzony z klawiatury txt jako rozszczelony
w naseepujacy sposob: 1 znak + 1 spacja

'''

napis = input("Podaj tekst: ")
def spacja (napis):
    w=''
    for znak in napis:
            w+=znak+ ' '
    return w
print(spacja (napis))
