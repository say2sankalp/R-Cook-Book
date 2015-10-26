rm(list=ls())
getwd()   
library(plot3D)
data("USArrests")
attach(USArrests)

str(USArrests)
##########################
#plot 3d texts
png(file="usaarrest.png",width=1024,height=800,res=80)
############
#converting image to high resoultion
jpeg("tet.jpg", width=5, height=5, units="in", res=500)
pdf("despo.pdf")
with(USArrests,text3D(Murder,Assault,Rape,labels = rownames(USArrests),colvar = UrbanPop,col = gg.col(100),theta =40 ,phi = 20,xlab ="murder",ylab ="assault", zlab ="rape",main="us arrest data ",cex=0.6,bty="g",ticktype="detailed",d=2,clab=c("Urban","Pop"),adj=0.5,font=2))


##########################
#add points

with(USArrests,scatter3D(Murder,Assault,Rape-1,colvar = UrbanPop,col = gg.col(100),type="h",pch=".",add = TRUE))
###########
##############zooooooooooooooooom neaR origin
plotdev(xlim=c(0,10),ylim=c(40,150),zlim=c(7,25))

#caution following could corrupt your graphics ,mine have been done 
dev.off()
########

