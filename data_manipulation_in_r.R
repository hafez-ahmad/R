library(dplyr)
data("mtcars")
data(iris)
mydata<- mtcars
data2<-iris
head(mtcars)
tail(data2)
data2 %>% select(Sepal.Length)
library(data.table)
d<- data.table(data2)
d[Species=="setosa"]
d[Species %in% c("setosa")]
frink <- image_read("https://jeroen.github.io/images/frink.png")
image_trim(frink)
image_scale(frink, "200x200")
image_flip(frink)
image_rotate(frink, 45) ## <-- result of this is shown
image_negate(frink)
frink %>% 
  image_background("green") %>% 
  image_flatten() %>%
  image_border("red", "10x10")
image_rotate(frink, 45) %>% image_write("img/frink-rotated.png")
image_oilpaint(frink)
image_implode(frink)
image_charcoal(frink) ## <-- result of this is shown
image_blur(frink)
image_edge(frink)

# Create GIF
(animation1 <- image_animate(logos))
image_write(animation1, "img/anim1.gif")

# Morph effect  <-- result of this is shown
(animation2 <- image_animate(image_morph(logos, frames = 10)))
image_write(animation2, "img/anim2.gif")
x<-c(20180101,2001022)


data<-read.csv("book1.csv")
data
x1<-data$date
y<-data$max.temp
as.Date("2001-01-22")
substr(x1[1],1,4)
substr(x1[1],5,6)
substr(x1[1],7,8)
paste(substr(x1[1],1,4),substr(x1[1],5,6),substr(x1[1],7,8),sep='-')
xx<-paste(substr(x1,1,4),substr(x1,5,6),substr(x1,7,8),sep='-')
x2<-as.Date(xx)
plot(x2,y)
lines(x2,y)
curve()
library(dplyr)
d<-read.csv("book1.csv")

head(d)
tail(d)
x<-d$date
dt<-paste(substr(x,1,4),substr(x,5,6),substr(x,7,8),sep='-')
as.Date(dt)
y<-d$max.temp
y
dt<-data.frame(dt,y)
sample_n(dt,1)



