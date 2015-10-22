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
write.csv(tbl,file = "tabltest.csv",row.names = FALSE)
# tbl2<- read.csv("http://www.example.com/download/data.csv")
v<- c(10,20,40)
names(v)<- c("a","g","l")
v
print(v)
v["a"]
a<- c(1:6)
dim(a)<- c(2,3)
a
v+1
f<- factor(c(1,3,4))
f
f1<- factor(warpbreaks )
lst<- list(0.5,0.8,0.9)
lst
lst3<- list()
lst3[[1]]<- 123
lst3[[2]]<- "moe"
lst3[[3]]<- 1:6
lst3[[4]]<- mean
lst3[c(1,2,4)]
class(lst3)
class(lst3[2])
years
class(years)
# Convert to data frame
colnames(content) <- columnnames
as.data.frame(content)
content

data()
cities<- us.cities
str(cities)
cities<- rbind(cities,data.frame(name="abc",country.etc="ABC",pop=456322,lat=33.5,long=-99.6,capital=0))
nrow(cities)
cities[[1]]
head(cities)
tail(cities)
head(cities[1])
head(cities[c(1,3,4)])
head(cities[,1])
cities[,1]
head(cities[,c(1,3,4)])
citi16<- subset(cities[1:25,])
citi16[1]
citi16[c(1,3)]
citi16[[1]]
citi16[1]
citi16[,c(1,3)]
citi16["pop"]
citi16[,"lat"]
library(MASS)
str(Cars93)
car3<- subset(Cars93,select = Model,subset=(MPG.city >30))
car3
car31<-subset(Cars93, Cars93$Model== "Swift",MPG.city> 30)
car31
cars41<- subset(Cars93,select = c(Model,Min.Price,Max.Price),subset = (Cylinders==4 &Origin=="USA"))
cars41
cars42<- subset(Cars93,select = c(Manufacturer,Model),subset = (MPG.highway > median(MPG.highway)) )
cars42
# changing the data frame wel its called editing proceed with caution 
temp<- edit(Cars93)
carsedited<- temp
fix(Cars93)
#not working 
? edit
t<- data.frame()
t<-edit(t)
t1<-t
t1
str(t1)
#nstall.packages("gcookbook")
attach(Cars93)
str(Cars93)
z<-with(Cars93,(RPM- mean(RPM))/sd(RPM) )
search()
z<- (Max.Price - mean(Max.Price))/sd(Max.Price)
z
detach(Cars93)
search()
attach(Cars93)
AirBags
table(AirBags)
ls()
#coneverting omne atomic value to another
as.numeric("3.14")
as.integer(("3.14"))
as.integer(3.14)
v<- c(40,2,83,28,58)
f<- factor(c("a","c","a","a","b"))
groups<- split(v,f)
groups
g<-split(MPG.city,Origin)
median(g[[1]])
median(g[[2]])
lst<- lapply(Cars93,length)
lst
lst<- sapply(Cars93,length)
lscls<- lapply(Cars93,class)
lscls
sapply(Cars93,class)
cors<- sapply(Cars93,cor,y= Price)
rm(list=ls())
library(MASS)
data()
attach(VADeaths)
str(VADeaths)
