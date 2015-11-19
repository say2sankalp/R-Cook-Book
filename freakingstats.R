rm(list=ls())
getwd()
rm(list=ls(all=TRUE))
#####
####following is net revenue 
net_rev<- c(179,168.9,154.11)
names(net_rev)<- c("flipkart","amazon","snapdeal")
### following is the loss of various 

loss_2103<- c(400,321.3,264.3)
names(loss_2103)<- c("flipkart","amazon","snapdeal")

#####finding the ratio for loss incures happened to all three startups 
###before that converting it into data frame for easy operation 

ecommerce<- as.data.frame(cbind(net_rev,loss_2103))
#####loss_rev_ration = netrevennue genrated in 2013 to loss incured in 2013 
ecommerce$loss_rev_ratio<- net_rev/loss_2103                    
ecommerce$loss_revdiff<- loss_2103 - net_rev 
ecommerce$netinvestment <- loss_2103+net_rev
ecommerce
t.test(net_rev,loss_2103)
### tes test tells that something has happened in year 2013 as al were infected while flipkart was harmed more 
summary(ecommerce)
##### now findng the rev generated/investment  ratio
ecommerce$revgen_invest<- net_rev/ecommerce$netinvestment
ecommerce

