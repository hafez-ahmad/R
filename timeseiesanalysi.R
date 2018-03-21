df<- data.frame(
  emp_ID=c(1:4),
  emp_name=c('hafez','jabed','jonhy','wick'),
  salary=c(10000,11111,12000,10001),
  dept = c("IT","Operations","HR","Finance"),
  start_date=as.Date(c('2000-01-01','2012-01-01','2009-01-01','2018-01-01')),
  stringsAsFactors= FALSE
)

str(df)
summary(df)
df$emp_name
df2<-data.frame(emp_ID=c(5:7),
                emp_name=c("Rasmi","Pranab","Tusar"),
                salary=c(578.0,722.5,632.8),
                dept = c("IT","Operations","Fianance"),
                start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
                
                stringsAsFactors = FALSE)
df3<-rbind(df,df2)


# timeseries 

rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall.timeseries<-ts(rainfall,start = c(2001,01),frequency = 12)
rainfall.timeseries
plot(rainfall.timeseries)
rainfall1 <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall2 <- c(655,1306.9,1323.4,1172.2,562.2,824,822.4,1265.5,799.6,1105.6,1106.7,1337.8)

# Convert them to a matrix.
combined.rainfall <-  matrix(c(rainfall1,rainfall2),nrow = 12)
combined.rainfall

ok<-ts(combined.rainfall,start=c(2016,1),frequency = 12)
plot(ok)


ok1<-ts(combined.rainfall,start=c(2016,1),frequency = 4)
ok1
setwd("E:/r")
air<-read.csv("airpassengers.csv")














