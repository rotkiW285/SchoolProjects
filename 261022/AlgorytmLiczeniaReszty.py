def wyznacz(reszta, T):
    T = [50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100, 50 ,20, 5, 2, 1]
    i = 0
    K = []
    while (reszta > 0):
        K[i] = reszta // T[i]
        reszta %= T[i]
        i += 1
    return K

print(reszta(T, K))