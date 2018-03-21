library(ggplot2)
setwd("E:/r")
x<-c(1,23,4,5,54,43,33,22,56,67,67,55,34,33,24,34,45,44,32)
y<-c(23,23,5,23,23,2,23,56,67,67,55,34,33,24,3,23,23,34,23)
hist(x)
daf<-data.frame(x,y)
ggplot(daf,aes(x=x))+geom_bar()
ggplot(daf,aes(x=y))+geom_histogram(binwidth =1)

ggplot(daf,aes(x,y,fill=x))+geom_point()
ggplot(daf,aes(x,y,colors=x))+geom_point()+labs(title="hafez",subtitle="ok",x="a axis",y="yaxis")

ggplot(daf,aes(x,y,colors=x))+geom_point()+geom_smooth()+
  labs(title="hafez",subtitle="ok",x="a axis",y="yaxis")


ggplot(daf,aes(x,y,colors=x))+geom_point()+geom_smooth(method = lm,col="firebrick")+
  labs(title="hafez",subtitle="ok",x="a axis",y="yaxis")

ggplot(daf,aes(x,y,colors=x))+geom_point(aes(col=y,size=3))+geom_smooth(method = lm,col="firebrick")+
  labs(title="hafez",subtitle="ok",x="a axis",y="yaxis")








data<-read.csv("landdata-states.csv")
View(data)
#first
head(data)
hist(data$Home.Value)
ggplot(data,aes(x=data$Home.Value))+geom_histogram()
ggplot(data,aes(x=data$Home.Value))+geom_histogram(binwidth = 0.2)
ggplot(data,aes(x=data$Home.Value,fill=data$Land.Value))+geom_histogram(binwidth = 200)

library(gcookbook)
View(uspopage)
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) +
  geom_area(colour="black", size=.2, alpha=.4) +
  scale_fill_brewer(palette="Blues", breaks=rev(levels(uspopage$AgeGroup)))
setwd("E:/r")
iris<-read.csv("iris.csv")
attach(iris)
iris[,-5]

pairs(iris)
iris[,1:4]
# pch point 
pairs(iris[,1:4],pch=20)
pairs(iris[,1:4],pch=20,col=c("red","green","blue"))
mcolors=c("red","green","blue")
pairs(iris[,1:4],pch=20,col=mcolors[iris$name])



library(ggplot2)
library(GGally)
ggpairs(iris[,-5])+theme_bw()
p<-ggpairs(iris,aes(color=name))+theme_bw()
p
for(i in 1:p$nrow) {
  for(j in 1:p$ncol){
    p[i,j] <- p[i,j] + 
      scale_fill_manual(values=c("#00AFBB", "#E7B800", "#FC4E07")) +
      scale_color_manual(values=c("#00AFBB", "#E7B800", "#FC4E07"))  
  }
}
library(psych)
pairs.panels(iris[,-5], 
             method = "pearson", # correlation method
             hist.col = "#00AFBB",
             density = TRUE,  # show density plots
             ellipses = TRUE # show correlation ellipses
)


data(diamonds)
head(diamonds)

# plot 1: Density of price for each type of cut of the diamond:
ggplot(data=diamonds,aes(x=price, group=cut, fill=cut)) + 
  geom_density(adjust=1.5)

# plot 2: Density plot with transparency (using the alpha argument):
ggplot(data=diamonds,aes(x=price, group=cut, fill=cut)) + 
  geom_density(adjust=1.5 , alpha=0.2)

# plot 3: Stacked density plot:
ggplot(data=diamonds,aes(x=price, group=cut, fill=cut)) + 
  geom_density(adjust=1.5, position="fill")

# plot 4
ggplot(diamonds, aes(x=depth, y=..density..)) + 
  geom_density(aes(fill=cut), position="stack") +
  xlim(50,75) + 
  theme(legend.position="none")



plot_ly(iris, x = ~Petal.Length, y = ~Petal.Width , type="scatter", mode="markers" , marker=list(color="purple" , size=20 , opacity=0.5) )

# ringplot


dat = data.frame(marks=c(20, 50, 30), category=c("marine", "Ocean", "fish"))

# Add addition columns, needed for drawing with geom_rect.
dat$fraction = dat$marks/ sum(dat$marks)
#add
dat = dat[order(dat$fraction), ]
# cumulative 
dat$ymax = cumsum(dat$fraction)
dat$ymin = c(0, head(dat$ymax, n=-1))

# Make the plot
p1 = ggplot(dat, aes(fill=category, ymax=ymax, ymin=ymin, xmax=4, xmin=3)) +
  geom_rect() +
  coord_polar(theta="y") +
  xlim(c(0, 4)) +
  theme(panel.grid=element_blank()) +
  theme(axis.text=element_blank()) +
  theme(axis.ticks=element_blank()) +
  annotate("text", x = 0, y = 0, label = "My Ring plot ! of hafez ahmad") +
  labs(title="my name is ring plot")
p1

ds<-read.csv("salaries.csv")
names(ds)
ggplot(ds,aes(x=rank))+geom_bar(fill="yellow",color="red")

ggplot(ds,aes(x=salary))+geom_histogram(fill="purple",color="green",bins = 20)

ggplot(ds,aes(x=salary))+geom_histogram(fill="purple",color="green",bins = 20)+ xlim(80000,140000)+ylim(0,40)

ggplot(ds,aes(x=salary))+geom_histogram(aes(fill=rank),color="black",bins=20)
ggplot(ds,aes(x=yrs.since.phd,y=salary))+geom_point(aes(color=rank))+geom_smooth(aes(color=rank),fill=NA)
ggplot(ds,aes(rank,salary))+geom_jitter(aes(color=rank))+geom_boxplot(aes(fill=rank),alpha=0.5)

ggplot(ds,aes(x=rank,y=salary))+geom_jitter(aes(color=rank))+geom_boxplot(aes(color=rank),alpha=0.4)+theme()
axis.title.x = element_text(size = 15,color="red")
  axis.text.y = element_text(size=15,color="blue")
  legend.title = element_text(size=15)
  axis.text.x = element_text(size=15,color="red")
  axis.text.y=element_text(size=15,color="blue")
  legend.text = element_text(size=15)
  legend.justification = c(0,1)
  legend.position =element_text(0.02,0.97)



# facet koita row hobe colum hove for discrete varia for fised ~.
ggplot(ds,aes(x=salary))+geom_histogram(aes(fill=rank),color="black",bins=20)+facet_grid(rank~.)

x<-c(2,3,4,4,6,7,8,8,99,9,99,87,76,66,66,76,87,46,56,56,87,76,56,46,35,45,56,66,54,55,65,46,45,12,22,33,34,45,47,45,46,57,67,68,67,58,57,46,76,58,66,56)
length(x)
range(x)
99-2+1
98/10
sw<-seq(2,98,by=10)

freq<-cut(x,sw,right=f)
frt<-table(freq)
cumfreq<-cumsum(frt)
cbind(frt,cumfreq)







