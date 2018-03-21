library(data.table)
library(FSA)
library(FSAdata)
data1<-read.table("age.dat",header =T)
data(KingCrabAK)
str(KingCrabAK)
head(KingCrabAK)
op <- par(mfrow=c(1,2),pch=19)
# plot(y axis~ x axis)
plot(recruits~year,data=KingCrabAK,type="l")
plot(recruits~adults,data=KingCrabAK)


data(PSalmonAK)
str(PSalmonAK)
head(PSalmonAK)
op <- par(mfrow=c(1,2))
plot(return~year,data=PSalmonAK)
plot(return~escapement,data=PSalmonAK)




