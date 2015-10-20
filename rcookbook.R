rm(list=ls(all=TRUE))
help(mean)
args(mean)
mean
example("mean")
mean(USArrests)
help.search("pattern")
help(adf.test,package = "tseries")
help(package = "tesries")
#hidden name >hivdar
.hivdar<- c(1:10,2)
ls()
ls.str()
ls.str(all.names = TRUE)
x<- c(0,1,1,2,2,3,4,5,6,13,21,33)
mean(x)
sd(x)
median(x)
var(x)
y<- log(x+1)
cor(x,y)
cov(x,y)
x<- c(0,1,1,3,8,5,7,NA)
mean(x,na.rm=TRUE )
sd(x,na.rm=TRUE)
print(dframe)
help.start()
data.frame()
install.packages(dimmeta)
1:5
seq(1:5)
seq(1,5,2)
rep(1,10)
rep(6,4)
seq(1,100,4)
ran<- rnorm(1:10)
ran
ran[1:5]
ran[3]
ran[c(1,5,2,6)]
ran[-1]
ran[-(1:3)]
ran[ran> median(ran)]
rd<- c(1:100)
rd[rd <quantile(rd) | rd > quantile(rd)]
rd[abs(rd - mean(rd)) > 2*sd(rd)]
   years<- c("1960","1964","1976","1994")
names(years)<- c("kennedy","johnson","carter","clinton")
years   
years["carter"]
years["clinton"]
years[c("carter","clinton")]
v<- c(11,12,13,14,15)
w<- c(1,2,3,4,5)
v+w
v-w
v*w
v/w
w^v
2^w
mean(w)
v - mean(v)/sd(v)
cv<- function(x){   
  sd(x)/mean(x)
    }
cv(1:10)
sapply(w,cv)
#chapter2
ls()
library(MASS)
ls.str()
getwd()
save.image()
history()
history(Inf)
search()
lda(f~ x+y)
detach(package:MASS)
library(MASS)
data(dsname,package = "pkgname")
head(pressure)
help("pressure")
data("Cars93",package = "MASS")
summary(Cars93)
head(Cars93)
library()
# entering from console 
score<- data.frame()
score<-edit()
score
points2<- data.frame(label = c("low","mid","high"),lbound=c(0,0.67,1.64),ubound=c(0.674,164,2.33)) 
points2
print(pi,digits = 5)
q<- seq(0,3,0.5)
tbl<- data.frame(quant= q,lowerQuant=pnorm(-q),upperquant=pnorm(q))
tbl
cat("the answer is ","\n",file="des.txt")
sink("des.txt")
source("rcookbook.R")
sink()
list.files()
list.files(all.files = TRUE)
# dfrm<- read.table("adrs of that file")
tbl
