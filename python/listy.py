t = []
n = int(input("podaj ilosc elementów listy: "))
for i in range(n):
    t.append(int(input()))
    print(t)
    print(t[-1])
    t.append(11)
    print(t)
    t.extend([1,2,3])
    print(t)
    t.count(1)
    print(t)
