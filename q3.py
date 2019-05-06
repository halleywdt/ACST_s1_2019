n=int(input('Enter the integer to be tested:'))
if n%4==0:
 if n%100==0:
  if n%400==0:
   print('The given integer %d does correspond to a leap year in the Gregorian calendar.'%n)
  else:
   print('The given integer %d doesnot correspond to a leap year in the Gregorian calendar.'%n)  
 else:
   print('The given integer %d does correspond to a leap year in the Gregorian calendar.'%n)
else:
   print('The given integer %d doesnot correspond to a leap year in the Gregorian calendar.'%n)
