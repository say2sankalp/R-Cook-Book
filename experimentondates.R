
rm(list=ls())
#install.packages("chron")
library(chron)
#in this we will be playing with date and tiem thatis posixct and posixlt
nchar("charrrr")
paste("everybody","loves","cake",sep = "-")
stoges<- c("mary","lila","amy")
paste(stoges,"eats","shit",sep = " ")
Sys.Date()
class(Sys.Date())
as.Date("12/02/2039")
as.Date("12/02/2039",format="%m/%d/%Y")
t<-format(Sys.Date())
t2<-as.character(Sys.Date())
class(t)
class(t2)
ISOdate(22,06,02)
years<- c(2012,2013,1992,1996)
mont<- c(1,2,3,4)
days<- c(5,23,15,16)
tm<- ISOdate(years,mont,days)
as.vector(tm)
as.Date(ISOdate(years,mont,days))
d<- as.Date("2012-12-12")
as.integer(d)
julian(d)
# extracting the part s of date
d1<- as.Date("2012-08-6")
p<- as.POSIXlt(d1)
p$mday
p$mon    
p$year +100
bd<- as.POSIXlt(as.Date("1992-02-22"))
bd$mon   
? as.POSIXlt
as.POSIXlt(bd)$wday
as.POSIXlt(bd)$yday
getwd()
s<- as.Date("1992-02-22")
e<- as.Date("1992-09-22")
seq(s,e,by = 1 )
seq(s,e,length.out = 7)
seq(s,e,by = "months")
