# 012345678910
# karykatura
# dt=t(len) (t)=10
# Ka
#     ka
#         ka 
#             ka


def szukaj(tekst, wzorzec):
    dt=len(tekst)
    dw=len(wrzorzec)
    T=[]
    for i in range(dt-dw+1):
        for j in range(i,i+dw):
            if tekst[j]!=wrzorzec[j-i]:
                break
            if j+1==i+dw
                T.append(i)
    if==T[i]:
        return False
    return T
print(szukaj("kartkatura","ka"))