from math import *
import sys
t=int(sys.argv[2]) #the number of years
P=float(sys.argv[1])#the principal
r=float(sys.argv[3])#the annual interest rate
def desiredvalue(t,P,r):
    z=r*t
    i=pow(e,z)
    return P*i 
a=desiredvalue(P,t,r)
print('the amount of money you would have is',a)

