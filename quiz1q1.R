pfunction = function(c,f,n,y) {  
p<-0
  for (j in 1:n) {
    t<-j/2
  p<-c*exp(-y[j]*t)+p
}
tn<-n/2
p<-f*exp(-y[n]*tn)+p
return(p)
}
#result
price<-pfunction(c,f,n,y)  # c is coupon C, f is face value F, n is the number of coupon payments, y is the interest rate factor