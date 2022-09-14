def sort_b(T):
    n = len(T)
    for j in range(n-1,0,-1):
        for i in range(j):
            if T[i]>T[i+1]:
                T[i], T[i+1] = T[i+1], T[i]
    return T
print(sort_b([2,5,1,9,3,4]))
