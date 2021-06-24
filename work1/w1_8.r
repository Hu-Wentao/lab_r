data = subset(airquality, Wind>10&Temp>80)

a = aggregate(data$Wind, list(data$Month), min)
print(a)
b = aggregate(data$Temp, list(data$Month), max)

data1 = data.frame(Month=a$Group.1, Wind=a$x,Temp=b$x)

r = nrow(data)

mydata = data.frame()

for(i in c(1:r)){
    if(
        data[i,"Wind"] == subset(data1$Wind,data1$Month==data[i,"Month"])&
        data[i,"Temp"] == subset(data1$Temp,data1$Month==data[i,"Month"])
    ){
        mydata = rbind(mydata,data[i,])
    }
}
mydata = mydata[order(mydata$Month)]
setwd("./work1")
write.table(mydata,"mydata.txt",sep=",", quote=TRUE, row.names=FALSE)