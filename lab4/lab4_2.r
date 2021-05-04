library(sqldf, help, pos = 2, lib.loc = NULL)
library(dplyr)
data = sqldf("select * from airquality where Wind>10 and Temp>80")
data = data[order(data$Wind,-data$Temp),]
fix(data)
print(distinct(data,Month,.keep_all=TRUE))
data = distinct(data, Month, keep_all=TRUE)
data = data[order(data$Month),]
fix(data)
write.table(data, file="./lab4/mydata.txt",col.names=FALSE,quote=TRUE)
