#First input some data and obtain estimates of mean length and numbers at each age: 
m<-read.table("http://tutor-web.net/fish/fish5103growth/lecture20/base20.dat",header=T)
l<-tapply(m$le,m$aldur,mean)
n<-tapply(m$le,m$aldur,length)
l<-l[n>=5]
a<-as.numeric(names(l))
plot(a,l)


#Use the R function from lecture 2.4 which provides the von Bertalanfy growth curve.
vonb<-function(b){
  Linf<-b[1]
  K<-b[2]
  t0<-b[3]
  lhat<-Linf*(1-exp(-K*(a-t0)))
  return(lhat)
}


#Define a new function which returns the sum of squared errors, for a given set of parameters.  
#The data is assumed to be available in the directory where the function is called.
sse<-function(b){
  lhat<-vonb(b)
  s<-sum((l-lhat)^2)
  return(s)
}


#Now, run a few commands to do the estimation.
fm<-nlm(sse,c(100,.1,0))
fm$estimate
fm$gradient
fm$minimum


#Plot some of the results
plot(a,l)
K<-fm$estimate[2]
t0<-fm$estimate[3]
Linf<-fm$estimate[1]
lhat<-Linf*(1-exp(-K*(a-t0)))
lines(a,lhat)








