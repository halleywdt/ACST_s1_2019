#a
library(readr)
singapore_economy <- read_csv("C:/Users/10142/OneDrive/desktop/ACST890/singapore.economy.csv")
dataset<-singapore_economy
#b
dataset<-na.omit(dataset)
#c
plot(dataset$gdp~dataset$time,xlab = "Time",ylab = "GDP(%)",main = "Singapore GDP growth")
#d
dataset1 <- subset(dataset,period==1)
dataset2 <- subset(dataset,period==2)
dataset3 <- subset(dataset,period==3)
mean<-c(mean(dataset1$gdp),mean(dataset2$gdp),mean(dataset3$gdp))
sd<-c(sd(dataset1$gdp),sd(dataset2$gdp),sd(dataset3$gdp))
dim1<-c("mean","sd")
dim2<-c("period 1","period 2","period 3")
dim3<-c("stat.table")
stat.table<-array(c(mean,sd), dim=c(2,3,1), dimnames = list(dim1, dim2, dim3))
stat.table
#e
pairs(dataset[, c(-1,-2)])
#f
modelf<-lm(gdp~exp,data=dataset)
summary(modelf)
#g
modelg<-lm(gdp~exp+epg+hpr+oil+gdpus+crd,data=dataset)
summary(modelg)
#h
q005<-quantile(dataset$gdp,0.05)
n<-length(dataset$gdp)
state<-dataset$gdp
for (i in 1:n){
  if (dataset$gdp[i] < q005) { 
    state[i]="crisis"}
  else {
    state[i]="normal"}
}
dataset<-data.frame(dataset,state) #state = 1 is a crisis state, state = 0 is a normal state

dataset4 <- subset(dataset,time<2008)
glm.fits=glm(dataset4$state ~ dataset4$bci , family=binomial )
summary (glm.fits)
glm.probs=predict(glm.fits,type="response")
glm.pred=rep("crisis" ,72)
glm.pred[glm.probs >.5]="normal"
table(glm.pred ,dataset4$state)
mean(glm.pred==dataset4$state)

