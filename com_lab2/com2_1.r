setwd("./com_lab2")
install.packages("sqldf")
library(sqldf)

detail_csv = read.csv("./resource/meal_order_detail.csv")
info_csv = read.csv("./resource/meal_order_info.csv")

# 新增day 字段
info_csv = transform(info_csv, day=as.Date(substr(lock_time,1,nchar(lock_time)-9)))

sheet1 = sqldf("select day, sum(accounts_payable) as sales, sum(number_consumers) as number from info_csv group by day",row.name=TRUE) 
# 删除已被取消(未锁定)的订单行
sheet1 = sheet1[-1,]

par(mfrow=c(1,2))
plot(sheet1$day,sheet1$number,main="每日用餐人数",xlab="日期",ylab="用餐人数",type="o")
plot(sheet1$day,sheet1$sales, main="每日销售额",xlab="日期",ylab="销售额",type="o")
