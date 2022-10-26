import math
floor = math.floor
t = [50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100, 50 ,20, 5, 2, 1]
a = int(input("Podaj liczbę złoty: "))
b = int(input("Podaj liczbę groszy: "))
def oblicz(z, g):
    c = z * 100 + g
    r = []
    for i in t:
        r.append(floor(c / i))
        c = c % i
    return r
print(oblicz(a, b))