def sort_wstaw(T):
    n = len(T)
    for i in range(1,n):
        pom = T[i]
        k = i - 1
        while k>=0 and T[k]>pom:
            T[k+1]=T[k]
            k = k-1
        T[k+1]pom
    return T
print (sort_wstaw([3,7,1,2,4,8]))
