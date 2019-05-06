import sys
m=int(sys.argv[1])
d=int(sys.argv[2])
import datetime
try: 
    datetime.datetime(2000,m,d)
    if m == 3:
     if d > 19:
      print('True')
     else:
      print('False')
    elif m > 3 and m < 6: 
     print('True')
    elif m == 6: 
     if d < 21:
      print('True')
     else:
      print('False') 
    else:
     print('False') 
except ValueError:
    print("invalid day and month")
