rm(list = ls())
getwd()
library(datasets)
workingdata<- read.csv("~/anedge/statedata.csv")
attach(workingdata)
summary(workingdata)
lapply(workingdata,mean)
str(workingdata)
identical(workingdata$Population,workingdata[mean(Life.Exp >26)])
workingdata[mean(Life.Exp >26)]
# i dont know why it is producing false 
mean((Life.Exp - mean(Life.Exp)) > 2*sd(Life.Exp))
  r<- table(state.region,Illiteracy)
summary(r)
quantile(Life.Exp,0.75)
quantile(Income,c(0.5,0.8))
quantile(Income)
scale(Income[Population > 2838])
#most important thing 
t.test(Population,mu= 2835)
t.test(Income,mu=3)
t.test(Income,mu=3000)
#The p-value is small and so it’s unlikely (based on the sample data) that 95 could be
#the mean of the population.
#Informally, we could interpret the low p-value as follows. If the population mean were
#really 95, then the probability of observing our test statistic (t = 3.2832 or something
 #                                                                more extreme) would be only 0.001897. That is very improbable, yet that is the value
#we observed. Hence we conclude that the null hypothesis is wrong; therefore, the sample
#data does not support the claim that the population mean is 95.

x<- rnorm(100,mean = 50,sd=3)
plot(x,col="red")
t.test(x,conf.level = 0.90)
wilcox.test(Income,mu = 4234,conf.int = 0.10)
median(Income)
# stock rise chance 6/9 
prop.test(6,9)
prop.test(11,20,0.5,alternative = "greater")
prop.test(6,9,0.5,conf.level = 0.95)
#################
#finding sample is from normal distribution or not  
shapiro.test(Income)
shapiro.test(Population)

#### there is also a pckage nortest which is mainly used for normality thing.

# following is use to find whehter binary is randomly distirbuted or not 

library(tseries)
library(datasets)
test<- read.csv("D:/coding/data-hackathon/train.csv")
str(test)
runs.test(as.factor(test$Gender))
#####################33
####Comparing the Means of Two Samples
attach(cars)
t.test(cars$speed,dist)
######################################################
##################
###########
###############correlato test 
attach(workingdata)
str(workingdata)
cor.test(Population,Income)
#################################33





##########testing groups for proportion  who is better like 
#I recently taught statistics to 38 students and awarded a grade of A to 14 of them. A
#colleague taught the same class to 40 students and awarded an A to only 10. I wanted
#to know: Am I fostering grade inflation by awarding significantly more A grades than
#she did?

sucess<- c(10,4)
trails<- c(15,8)
prop.test(sucess,trails)


############################
## tersting two sample for sam edistribution which means that are they from same distribution  pattern
## kolomongrov smirnov test 
ks.test(Income,Population)
