# Rstudio
getwd()
# set directory
setwd("E:/r")
#help
?
  ??
RSiteSearch("mean")
  
help(kurtosis)
#exiting objects list
ls()
#remove
rm()
#remove all 
rm(list=ls())
# history()
history()

# math
# add
1+3
2*3+8/2
x<-2
y<-3
z<-4
x*y+z
8+9/5^2
# division
1/7
options(digits = 4)
1/7

# integer division
11%/%7
#remainder
11%%7
# abosulate value
x<-10.44345
abs(x)
#root
sqrt(x)
log10(x)
# base=2
log(x,base=2)

x<-c(4,5,9,10)
y<-c(4,4,9,10)
identical(x,y)
# near equality, if not generate mean
all.equal(x,y)
x+y
sum(x)
sum(y)
sum(x,y)
which(x==y)
# total 
sum(x==y)
x==y
# nearest integer 
round(34.67)
# up 
ceiling(34.56)
# down
floor(12.54)
# specifie
round(23.567,digits = 1)




# double number +  fraction double
# vector cane number(double, integer) , character ""one dimention"
x<-c(-2)
# let's check
is.character(x)
is.double(x)
# double similar atomic
is.atomic(x)
is.vector(x)
is.na(x)
is.integer(x)
y<-1:10
y
is.integer(y)
# integer without fraction
x1<-c(-2L)
is.integer(x1)
y2<-1.2:2.4
y2
is.integer(y2)
is.double(y2)


# logic
x3<-c(2,3,4,5)

x4<-c(4,7,8,3)
x3>x4
mx.x3<-max(x3)
min.x4<-min(x4)
mx.x3|min.x4
x4[!is.na(x4)]
x5 = 1; y5= 2   # sample values 
z<- x5 > y5      # is x larger than y? 
 z              # print the logical value 
class(z)       # print the class name of z 

#Standard logical operations are "&" (and), "|" (or), and "!" (negation).
u = TRUE; v = FALSE 
u & v          # u AND v 
u | v          # u OR v 
!u             # negation of u 
(x5== 1) & (y5 == 2)




















x<-c(1,2,3,4,34,2,34,2334,23,234,34)
###how many elemenet 
length(x)
# small to big
sort(x)
sort(x,decreasing = TRUE)
log10(x)
str(x)
class(x)
typeof(x)
is.character(x)
x%%3

x[x%%3==0]
x[x/3==0]
x[x>20]
x[c(2,3,4)]
x%%3==0
# sequence 
seq(1,10,1)
seq(1,10,length=14)
seq(from=1, to=10,by=1)
seq(0,21,length.out = 10)

# repetation
rep(1:10,1)
# repea fashion  uncollated , maintain seq
rep(1:10,each=5)
# collated 
rep(1:4,times=10)


length(x)
y<-1:11
length(y)
datafr<-data.frame(x,y)


# character 
a<- "hafez"
b<- "ocean"
c1<- c("hafez ahmad")
is.character(c1)
nchar(c1)







# add
paste(a,b)
# character + num
paste("I am a student of oceanography",05207021)
# to string
toString(c("hafez",1998))


datafr1<-data.frame(y,x)
rbind(datafr,datafr1)
cbind(datafr,datafr1)
# dele
df<-data.frame(x=1,y=3,z=3)
df[, !(colnames(df) %in% c("x"))]

emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("hafez","ahmad","Mini","rohol","kamal"),
  salary = c(643.3,515.2,671.0,729.0,943.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27")),
  stringsAsFactors = FALSE
)





#concanate
paste("a","b")
paste0("a","b")
paste("a","b","c",sep=",")
paste0("a","b","c",sep=",")
paste("abb","b","c",sep=",")
paste(c(1:4))
paste(c(1:4),c(5:8),sep="")
paste0(c("var","pred"),c(1:5))
attributes(datafr)
unclass(datafr1)
unlist(datafr1)
object.size(datafr1)
object.size(datafr)
table(datafr1)
# list
li<-c(1:5)
li
sum(li)
l<-c("JJJ","HHH","KJ","ll","oo")
lis<-list(li,l)
class(lis)
# not sum
sum(lis)
lis[1:3]
lis[]
n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)
x
x[2]
ok<-list(bob=c("hafez","jj"),roll=c(1,2))
ok[1]
ok[2]
ok[1:2]

ls()
gc()
 # condition and fumnctions 
j<-4
if (j>=2){
  print( " j is greater than 2")
}

j1<-1
if (j1>=2){
  print( " j is greater than 2")
}else{
  print(" j is not greater")
}

# loop
c<-c(1,23,3)
for (i in c){
  print(i)
}


f1<-function(a){
  for(e in c){
    b<-e^2
    print(b)
  }
}

add2<-function(a,b,c){
  r<- a+b+c
  print(r)
}

add2<-function(a,b,c){
  r<- a+b+c
  print(r)
  print(r^3)
}
sumofsq<-function(x,y,z){
  sumq<-sum(c(x^2+y^2+z^2))
  return (sumq)
}

ocean.marks<-c(90,70,80)
state.marks<-c(80,67,89)
Total<-function(ocean.marks,state.marks){
  total<-ocean.marks+state.marks
  print(paste("total number is :", total))
}

Total(ocean.marks,state.marks)
getresult<- function(test.marks) {
  average.marks <- mean(test.marks)
  performance.test <- average.marks >= 75
  print(paste("average marks :",average.marks, "performance.test :",performance.test))
  if(performance.test){
    print("Overall performance of the batch is brilliant")
  }
  else{
    print("Overall performance of the batch is average")
  }
  print("performance test completed") 
}

getresult(test.marks= c( 70L , 75L , 80L,  85L))
getresult(test.marks= c( 50L , 60L , 60L,  70L))









r1<-c(3,4,5)
r2<-c(2,3,4,5,6,7)
array(c(r1,r2),dim=c(2,2,2))
# names
clnames<-c("hafez","ocean")
rwnames<-c("r1","r2")
m.names<-c("m1","m2")
ar<-array(c(r1,r2),dim=c(2,2,2),dimnames =list(rwnames,clnames,m.names))
ar[1]
#1 matrix
ar[1,,]
ar[2,,]
# 1-row , 2-col , dim-1
ar[1,2,1]
# sum row wise
apply(ar, 1,sum)

# matrix and array
x<-matrix(seq(1:16),ncol = 4)
x
x[2]
x[c(1,2,3,4)]
x[x>10]
x[x>=4|x<14]
x[!is.na(x)]
which(x==min(x))
x[c(-2,-3,-4,-5)]

m<-matrix(seq(1:9),nrow = 3)
m
rowMeans(m)
rowMeans(m)
rowSums(m)
colMeans(dtf)
colSums(m)



#"""Statistics basics"""
# for discrete 
x<-c(1,20,34,43,23)
mean(x)
x2<-c(1,10)
mean(x2)

# for continus
x3<-c(seq(1,10,0.20))
x3
mean(x3)
#harmonic.mean
1/mean(1/v)
mean(v)
#gemotric mean
n=length(v)
prod(v)^(1/n)
 # MODE
library(modeest)



c<-c(12,23,12,32,23,23,21)
mlv(c,method="mfv")

Mode11<- function(x){
  ux<-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

data1<-read.csv("iris.csv")
library(psych)
describeBy(data1,group = data1$name)


x<-c(1,3,4,5,5,6)
#sample variance
var(x)
# population 
# n>1
n<-length(x)
n
var(x)*(n-1)/n

# n>0
mean((x-mean(x))^2)

# standadr devia
sd(x)
# population
sqrt(mean(x-mean(x))^2)


#sample vari
var(x)
# po var
x
f<-c(1,2,4,0,1,2)
xb<-sum(x*f)/sum(f)
xb
sum(f*-xb)^2/sum(f-1)

# or

var(x)*length(x)-1/length(x)


#skew
library(moments)
skewness(c)
kurtosis(c)
moment(c)


# point estimation 
library(MASS)
head(survey)
 h.s<-survey$Height
 # msing vale skip
h.s<-mean(h.s ,na.rm = TRUE)
h.s

#Cumsum(x) - The cumulative sum of a vector
#Cummax(x) - The cumulative maximum value
#Cumin(x) - The cumulative minimum value
#Cumprod(x) - The cumulative product




# gerenate random number 
n<-10
runif(n,min = 1,max = 20)
sample(1:25)
# small to big
sample(1:25,replace = TRUE)
# dont know 
sample(1:25,replace = FALSE)
# normal distribution or gaussain 
rnorm(25,mean=0,sd=1)
# cumulative distribution
pnorm(25,mean=0,sd=1)
# density or probability
dnorm(25,mean=0,sd=1)
qnorm(25,mean=0,sd=1)






# binomial distribution
#q-12,mcq=5, ans at random=4 or less
dbinom(4,size=12,prob=0.2)
# size =x trials, prob =probabilty of success

dbinom(2,size=12,prob=0.2)
pbinom(4,size=12,prob=0.2)*100
# poisson distribution
ppois(16,lambda = 12)

ppois(16,lambda = 12,lower=FALSE)
# CONTI unifor distri
# ten random nnumber bet 1 and 3
runif(10,min=1,max=3)
# normal ditri
pnorm(84,mean=72,sd=15.2,lower.tail = FALSE)
# chi squa distri
qchisq(.95,df=7)rbinom(25,size = 100,prob=0.5)
# quantile 
qbinom(122,size=100,prob = 0.5)
# exponnetial distributio
rexp(n,rate=1)
rexp(10,rate=1)
#density
dexp(10,rate=1)
# cdf probability 
pexp(10,rate=1)
# quantile
qexp(12,rate=1)
# gammma distribution
rgamma(10,shap=1)

# SET SEED
set.seed(200)
rnorm(10,mean=0,sd=1)

rnorm(10,mean=0,sd=1)

#student distri
qt(c(.94,.89),df=5)
#f distri
qf(0.89,df1=2,df2=2)
library(MASS)
# point estimation NA.RM =SKIP MISSING
mean(survey$Height,na.rm = TRUE)
# 95% ERROR AND INTERVAL CONFIDENCE
H.RES=na.omit(survey$Height)
H.RES
std=sd(H.RES)
std
n=length(survey$Height)
# standar error
sterror=std/sqrt(length(survey$Height))
sterror
e=qt(.95,df=n-1)
e
hm=mean(H.RES)
hm
hm+c(-e,e)
#"""~	  y ~ x	        Model y as a function of x
## +	  y ~ a + b	        Include columns a as well as b
## -	  y ~ a - b	        Include a but exclude b
## :	   y ~ a : b	        Estimate the interaction of a and b
## *	  y ~ a * b	        Include columns as well as their interaction (that is, y ~ a + b + a:b)
## |	  y ~ a | b	        Estimate y as a function of a conditional on b"""###
# linear regression   determine relationships between different types of variables.

l<-data(cars)
lg<-lm(speed ~ dist,cars)

lg
fitted(lg)
residuals(lg)
formula(lg)

# or 
t.test(cars)

# chi square

chisq.test(cars$speed,cars$dist)

chisq.test(mtcars$carb, mtcars$cyl)
# anova 


# data import
setwd("E:/r")
data<-read.table(file.choose(),header=T,sep=',')
attach(data)
dim(data)
names(data)
class(Gender)
count<- table(Gender)
barplot(count)
percent<- count/725
barplot(percent)
barplot(percent,main="barplot",xlab="x",ylab="y")
barplot(percent,main="barplot",xlab="x",ylab="y",horiz = TRUE)
barplot(percent,main="barplot",xlab="x",ylab="y",las=1)
pie(count)
box()
# boxplot
boxplot(data)
# comp
boxplot(LungCap ~ Gender)
quantile(Age,probs = c(0,0.26,0.50,0.80))
#cut
agegroup<-cut(Age,breaks = c(12,13,15,17,22),labels = c("<13","14/15","6/17","18+"))
agegroup
labels(agegroup)
levels(agegroup)
boxplot(LungCap~Smoke,main="lung vs smoke",ylab="lung capacity",las=1)
#las for 1, 2 rotaing x axis texk
boxplot(LungCap[Age>=18]~Smoke[Age>=18],main="lung vs smoke for 18+",ylab="lung capacity",las=1)
boxplot(LungCap~Smoke*agegroup,main="lung vs smoke for 18+",ylab="lung capacity",las=1)
boxplot(LungCap~Smoke*agegroup,main="lung vs smoke for 18+",ylab="lung capacity",las=2)

boxplot(LungCap~Smoke*agegroup,main="lung vs smoke for 18+",ylab="lung capacity",col=c(1:8),las=1)
#curve polynomial regression
period <- 120
x <- 1:120
y <- sin(2*pi*x/period) + runif(length(x),-1,1)
plot(x,y, main="Sine Curve + 'Uniform' Noise")
mtext("showing loess smoothing (local regression smoothing)")
y.loess <- loess(y ~ x, span=0.75, data.frame(x=x, y=y))
y.predict <- predict(y.loess, data.frame(x=x))

lines(x,y.predict)
legend(1,2, legend=c("Line 1"),col=c("red"),cex=0.8)




# read
read.table(file.choose(),header=TRUE,sep=',')

f=factor(c("M","M","F","M","M","F","F",'M'))
length(f)
y=rnorm(8)
length(y)
x<-c(0,2,8,4,32,64,128,16)
length(x)
par(mfrow=c(2,2))
plot(y)
plot(x)
plot(x,y)
plot(f,x)
data<-read.delim("book1.csv",header = FALSE,skip = 2)
library(data.table)
da<-read.table("book1.csv",header=TRUE,sep=',',stringsAsFactors = TRUE)
fread("book1.csv")
glimpse(dt)
x<-data("sunspots")
x<-data("sunspot.year")


sequence_data <- read.csv(
  paste0(
    "https://gist.githubusercontent.com/kerryrodden/7090426/"
    ,"raw/ad00fcf422541f19b70af5a8a4c5e1460254e6be/visit-sequences.csv"
  )
  ,header=F
  ,stringsAsFactors = FALSE
)

library(sunburstR)
sunburst(sequence_data)

library(canvasXpress)
y <- read.table("http://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
write.csv(z,file="z.csv")
z <- read.table("http://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep= "\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)

canvasXpress(data      = y,
             varAnnot  = z,
             colorBy   = "Species",
             ellipseBy = "Species",
             graphType = "Scatter3D",
             title     = "Iris Data Set",
             xAxis     = list("Sepal.Length"),
             yAxis     = list("Petal.Width"),
             zAxis     = list("Petal.Length"))
#Scatter3D

#Scatter 2D Matrix Plot
y <- read.table("http://www.canvasxpress.org/data/cX-irist-dat.txt", header=TRUE, sep="\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
z <- read.table("http://www.canvasxpress.org/data/cX-irist-var.txt", header=TRUE, sep= "\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)

canvasXpress(data              = y,
             varAnnot          = z,
             graphType         = "Scatter2D",
             scatterPlotMatrix = TRUE,
             colorBy           = "Species",
             showTransition    = TRUE)
Scatter2DMatrix

Boxplot
y <- read.table("http://www.canvasxpress.org/data/cX-iris-dat.txt", header=TRUE, sep="\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
x <- read.table("http://www.canvasxpress.org/data/cX-iris-smp.txt", header=TRUE, sep= "\t", 
                quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)

canvasXpress(data              = y,
             smpAnnot          = x,
             graphType         = "Boxplot",
             graphOrientation  = "vertical",
             title             = "Iris flower data set",
             smpTitle          = "Species",
             smpLabelFontStyle = "italic",
             smpLabelRotate    = 90,
             xAxis2Show        = FALSE,
             afterRender       = list(list("groupSamples", list("Species"))))
Boxplot

Heatmap (Multi-dimensional)
y  <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat.txt", header=TRUE, sep="\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
y2 <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat2.txt", header=TRUE, sep="\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
y3 <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat3.txt", header=TRUE, sep="\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
y4 <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-dat4.txt", header=TRUE, sep="\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
x  <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-smp.txt", header=TRUE, sep= "\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
z  <- read.table("http://www.canvasxpress.org/data/cX-multidimensionalheatmap-var.txt", header=TRUE, sep= "\t", 
                 quote="", row.names=1, fill=TRUE, check.names=FALSE, stringsAsFactors=FALSE)

canvasXpress(data          = list(y = y, data2 = y2, data3 = y3, data4 = y4),
             smpAnnot      = x,
             varAnnot      = z,
             graphType     = "Heatmap",
             guides        = TRUE,
             outlineBy     = "Outline",
             outlineByData = "data2",
             shapeBy       = "Shape",
             shapeByData   = "data3",
             sizeBy        = "Size",
             sizeByData    = "data4")


library(DiagrammeR)

grViz("
digraph boxes_and_circles {
     
     # a 'graph' statement
     graph [overlap = true, fontsize = 10]
     
     # several 'node' statements
     node [shape = box,
     fontname = Helvetica]
     A; B; C; D; E; F
     
     node [shape = circle,
     fixedsize = true,
     width = 0.9] // sets as circles
     1; 2; 3; 4; 5; 6; 7; 8
     
     # several 'edge' statements
     A->1 B->2 B->3 B->4 C->A
     1->D E->A 2->4 1->5 1->F
     E->6 4->6 5->7 6->7 3->8
     }
     ")







