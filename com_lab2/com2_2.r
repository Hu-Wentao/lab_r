setwd("./com_lab2")
# install.packages("sqldf")
# install.packages("ggplot2")
library(sqldf)
library(ggplot2)

detail_csv = read.csv("./resource/meal_order_detail.csv")

detail_csv$dishes_name<-trimws(detail_csv$dishes_name, which = c("both", "left", "right"), whitespace = "[ \t\r\n]")
sales_sheet = sqldf("select dishes_name, sum(counts) as counts from detail_csv group by dishes_name",row.name=TRUE)


#定义一个空数组score作为热销度评分的存储器
score = c()
max_sales = max(sales_sheet$counts)
min_sales = min(sales_sheet$counts)
for(i in c(1:nrow(sales_sheet))){
score[i]<-(sales_sheet[i,"counts"]-min_sales)/(max_sales-min_sales)
}
#sales_sheet 新增score
sales_sheet$score = score

#评分前十名的食物
sell_order=head(sales_sheet[order(-sales_sheet$score),],10)
#绘图
ggplot(sell_order,aes(x = dishes_name,y = score))+
geom_bar(stat = "identity")


