#arithmetics operations
x<-c(1,2,3)
#sum
sum(x)
#cumulative
cumsum(x)
# max
max(x)
# min
min(x)
#product
prod(x)
#cumu product
cumprod(x)
cummax(x)
#difference
diff(x)
# comparing 
y<- c(1,4,5)
#equal
x==y
# not eq
x!=y
x>y
x>=y
x<y
x<=y
# and 
x&y
# or
x |y
# not
 ! y
# x or y but not x and y
xor(x,y)
# exam
is.character(x)
n<-c("hafez")
is.character(n)
# how many characters
nchar(n)
# how total word 
length(n)

is.infinite(x)
is.integer(x)
is.array(x)
is.complex(x)
is.data.frame(x)
is.element(x)
is.list(x)
is.vector(x)
is.double(x)
z<- 4L
is.integer(z)
vt<-c(z)
is.integer(vt)
# round
round(2.345)
round(2.456,digits = 2)
round(-2.456,digits = 2)
round(2.456,digits = -2)
# remove last two digits from integer 
round(-1223.44,digits=-2)
signif(-123.4654,digits = 4)
floor(244.56)
# near
ceiling(244.56)

# mathe

abs(23.45)
log(2,base=10)
log(1:10,base=10)
exp(2)
factorial(3)
sqrt(4)
choose(2,3)
7/3
#remainder


7%%3
# inte divide
7%/%3
# tex
 l<-"quick brown fox jumps over the lazy dog"
l 
strsplit(l,"")
w<-strsplit(l,"")[[1]]
w

toupper(l)
unique(tolower(w))
tolower(l)
paste("quick","lazy","fox")
#data fram
naa<-c("hafez","kalmal","lola")
df<-data.frame(naa,x,y)
library(dplyr)
# add new column / variable
df1<-mutate(df,xy=x*y)
df2<-transform(df1,"x/y"=x/y)
# addf new but drop all
transmute(df2,"h"=x+2)
# and other way
z<-c('a','k','kl')
cbind(z,df2)
cbind(df2,z)
# row 
z2<- c("l","jj","kj","al")
rbind(df2,z2=z2)
cvar <- c("2015-11-01","2015-11-02","2015-02-12")
nvar1 <- c(12,10,5)
nvar2 <- c(7,5,6)
data2<- cbind.data.frame(cvar,nvar1,nvar2)
# add row 
data2 %>% 
  add_row(cvar = "2014-02-13", nvar1 = sum(nvar1), nvar2 = sum(nvar2))

dim(df2)
head(df2)
df4 <- data.frame(
  v1 = c(1,3,5,7,8,3,5,NA,4,5,7,9),
  v2 = c(11,33,55,77,88,33,55,NA,44,55,77,99),
  by1 = c("red", "blue", 1, 2, NA, "big", 1, 2, "red", 1, NA, 12),
  by2 = c("wet", "dry", 99, 95, NA, "damp", 95, 99, "red", 99, NA, NA))

df<-data.frame(x=1,y=3,z=3)
df[, !(colnames(df) %in% c("x"))]


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






