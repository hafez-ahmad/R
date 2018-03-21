### basics plot
#line
s<-c(3,6,8,9)
plot(s)
plot(s,main = "my first line plot ",xlab="x value",ylab = "y value")
lines(x)
plot(s,type = "o")
#line
plot(s,type = "l")
# point
plot(s,type = "p")
#break line with dot
plot(s,type = "b",lty="dotted")
# pch == point shape
plot(s,pch=10)
# cex.main, cex.lab, cex.axis
plot(s,s*2, main="plot of s and \n s*2",cex.main=3,xlab="x axis of s",ylab="y axis s*2",col.axis="blue",col.ticks = 'darkred',cex.axis=2,pch=19,cex.lab=2,
     font = 2, family = 'serif')

box(col = 'lightblue')



lines(s)
box()
# barplot
# frequency distribtuion 
barplot(s)
barplot(s,xlab = "xvalue",ylab = "yvalue",border="blue",main="barplot",names.arg=c("fish1","fish2","fish3","fish4"))
barplot(s,xlab = "xvalue",ylab = "yvalue",border="blue",main="barplot",names.arg=c("fish1","fish2","fish3","fish4"),col=rainbow(5))
legend("topright",c("k","l","aa","aaa"),fill=rainbow(5))
# histogram
hist(x)
x<-c(1,22,32,43,54,54,3,23,45,45,3,22,67,7,87)
# breaks num,ber of cell
hist(x,breaks =10,ylab="frequency",main="histogram",xlim = c(0,60),ylim=c(0,4),col=rainbow(4))
# pie 
pie(s,main="pie char",col = terrain.colors(5),labels=c("k","la","Aksd","oo"))
l<-(round(100*s/sum(s)))
la<-paste(l,"%",sep="")
pie(s,labels=la,col=rainbow(5),main = "pie chart")
legend("topleft",c("1","kaj","ad","ads"),fill=rainbow(6))


# pair plot

data("iris")
View(iris)
write.csv(iris,file = "iris.csv")
# skip for 1line 
data1<-read.csv("iris.csv")
# edit
edit(data1)
# summary
summary(data1)
# all about
str(data1)
table(data1$sepal_length)
# inter quartile range
IQR(data1$sepal_length)
# minimu,lower hinge, median , upper hinge , maximum
fivenum(data1$sepal_length)
attributes(data1)

x1<-table(data1$Species)

x1
barplot(x1[order(x1,decreasing = T)],col=rainbow(4))
barplot(x1[order(x1,decreasing = T)],col=rainbow(4),horiz = T)


pairs(data1)
plot(data1$Sepal_length,data1$Petal_length,col=data1$Species,pch=16,cex=2,xlab="sepal_length",ylab = "pelat_length")
legend(4.5,7,levels(data1$Species),col=c(1:3),pch=16)

# transparaent bg
legend(4.5,5,levels(data1$name),col=c(1:3),pch=16,bg="transparent")
# boxplot for  check spread

boxplot(data1$sepal_length ~ data1$name)
boxplot(data1$sepal_lengt ~ data1$name)
boxplot.stats(data1$sepal_length)


#boxplot with 
boxplot(data1$sepal_length ~ data1$name,xlab = "Species", ylab = "Sepal Length",main = "Sepal Length by Species in data1")     
# par plot area row column
par(mfrow=c(1,2))
plot(data1$sepal_length,data1$petal_length,col=data1$name,main =  "Sepal vs Petal Length in data1")
plot(data1$sepal_width,data1$petal_width,col=data1$name,main ="Sepal Length vs Width in data1")

# dotchart
dotchart(data1$sepal_length)
# stripchart
stripchart(data1$sepal_length)
# density
plot(density(data1$sepal_length))
# quantile plot
qqnorm(data1$sepal_length)


# advance_level_1
par(bg="grey90")
a=rnorm(400,mean=5,sd=12)
b=rnorm(400,mean=15,sd=5)
c=rnorm(200,mean=12,sd=4)
# red, green,blue,apha(o is full transparent )
hist(a,col=rgb(1,0.2,0.2,0.7),breaks = 40,xlim = c(-40,40),ylim = c(-20,70))
hist(b,col=rgb(0,1,0,0.5),breaks = 15,add=T)
hist(c,col = rgb(0,0,1,0.8),breaks = 15,add=T)
library(lattice)
histogram(~data1$sepal_length|data1$name,data=data1,layout=c(1,3),col="gray")

# Latex in PLOT

x <- rnorm(100)
hist(x, main = expression(beta))
x1<-rnorm(1000,sd=1,mean=5)
hist(x1,prob=TRUE)
lines(density(x1))
# , FOR SPACE
hist(x1,main = expression(paste("sample value",mu,"=5,",sigma,"=1")))
hist(x1,main=expression(paste(frac(1,sqrt(2 *pi*sigma^2*integral(e^(-t^2/2) * dt, -infinity, x))))))

g<- c(.43, .47, .47, .48, .50, .52, .53, .53, .54, .54, .54, .54, .55, .55, .55, .56, .56, .57, .57, .57, .57, .58, .58, .58, .59, .59, .60, .62, .63, .63, .64, .64, .66, .66, .67, .67, .68, .70, .70)
hist(g)
lines(density(g),lw=2)
range(g)

library(caret)
library(Seurat)
# split 
x<-data1[,1:4]
# five 
y<-data1[,5]
par(mfrow=c(1,4))
for (i in 1:4){
  boxplot(x[,i],main=names(data1)[i])
}
#Multivariate Plots
featurePlot(x=x,y=y,plot="ellipse")
featurePlot(x=x,y=y,plot="box")
scales<-list(x=list(relation="free"),y=list(relation="free"))
featurePlot(x=x,y=y,plot="density",scales=scales)

library(manipulate)

manipulate(
  plot(cars, xlim=c(x.min,x.max)),
  x.min=slider(0,15),
  x.max=slider(15,25))

                  
manipulate(
  barplot(as.matrix(longley[,factor]), 
          beside = TRUE, main = factor),
  factor = picker("GNP", "Unemployed", "Employed"))   

manipulate(
  boxplot(Freq ~ Class, data = Titanic, outline = outline),
  outline = checkbox(FALSE, "Show outliers"))

manipulate(
  plot(cars, xlim = c(0, x.max), type = type, ann = label),
  x.max = slider(10, 25, step=5, initial = 25),
  type = picker("Points" = "p", "Line" = "l", "Step" = "s"),
  label = checkbox(TRUE, "Draw Labels"))

manipulate(
  plot(cars, xlim = c(x.min, x.max), type = type,
        axes = axes, ann = label),
   x.min = slider(0,15),
  x.max = slider(0,120, initial = 25),
  type = picker("p", "l", "b", "c", "o", "h", "s", "S", "n"),
  axes = checkbox(TRUE, "Draw Axes"),
  label = checkbox(FALSE, "Draw Labels"))

