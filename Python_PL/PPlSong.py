import numpy as np
import random
n = random.randint(1, 5)
arr = np.array([np.array([None for j in range(n)]) for i in range(n)])
for i in range(n):
    arri = np.array([])
    for j in range(n):
        arrj = np.array([random.randint(-10, 10)])
    	arri = np.append(arri, arrj)
    arr[i] = arri
print arr
det = 0;
perm = np.array([0 for i in range(n)])
for i in range(pow(n, n)):
    pisum = 1
    for j in range(n-1, -1, -1):
        if(perm[j] in perm[:j]):
            pisum = 0
            break
        pisum *= arr[j][perm[j]]
    if pisum != 0:
        sig = np.copy(perm)
        numswaps = 0
        for p in range(n):
            if(p != sig[p]):
                for q in range(p + 1, n):
                    if(sig[q] == p):
                        break
                sig[p], sig[q] = sig[q], sig[p]
                numswaps += 1
        if numswaps % 2 == 1:
            pisum *= -1
    det += pisum
    k = n-1
    while perm[k] == n-1 and k != 0:
        perm[k] = 0
        k -= 1
    perm[k] += 1
print "Python says this determinant is " + str(det)
