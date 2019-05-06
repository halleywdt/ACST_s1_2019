import sys
a=int(sys.argv[1])
b=int(sys.argv[2])
if a>b:
    c=a
    a=b
    b=c
import random 
r= random.randint(a,b)
print (r)
