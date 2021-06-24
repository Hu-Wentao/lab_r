setwd("./com_lab2")
# install.packages("sqldf")
library(sqldf)

detail_csv = read.csv("./resource/meal_order_detail.csv")

sales_sheet = sqldf("select dishes_name, sum(counts) from detail_csv group by dishes_name",row.name=TRUE)

write.table(sales_sheet,"foo1.csv",sep=",", quote=TRUE, row.names=FALSE)



# plot(sheet1$day,sheet1$number,main="每日用餐人数",xlab="日期",ylab="用餐人数",type="o")



# houseIndex$rates = houseIndex$delta/houseIndex$index[houseIndex$rates]

# houseIndex$rates[1]  = houseIndex$index[1]-1

# rateMatrix = xtabs(rates~month+year,data=houseIndex)

# round(rateMatrix[,1:4],digits=4)

# yearmean = colMeans(rateMatrix)

# barplot(yearmean,main="HPI 的平均年增长率",xlab="年",ylab="平均年增长率")

# mouthmean = rowMeans(rateMatrix)

# plot(1:12,mouthmean,type="b", main="HPI 的平均月增长率",xlab="月",ylab="平均月增长率")