setwd("./com_lab2")
# install.packages("reshape")
# install.packages("gridExtra")
# install.packages("ggplot2")
library(reshape)
library(gridExtra)
library(ggplot2)

detail_csv = read.csv("./resource/meal_dishes_detail.csv")

#定义一个空数组margin_rate作为毛利率的存储器
margin_rate = c()
#计算dishes_count每一行的热销度评分
for(i in c(1:nrow(detail_csv))){
    margin_rate[i]= (detail_csv[i,"price"]-detail_csv[i,"cost"])/detail_csv[i,"price"]
}
detail_csv$margin_rate = margin_rate

#对数据框detail_csv按margin_rate降序排列，得新数据框desc
desc = detail_csv[order(-detail_csv$margin_rate),]
#取数据框desc两列"dishes_name"和"margin_rate",并取毛利率排名前5的记录
desc = head(desc[,c("dishes_name","margin_rate")],5)

par(mfrow=c(1,2))

#根据毛利率排名前5的食物绘图
a = ggplot(desc,aes(x = dishes_name,y = margin_rate)) + geom_bar(stat = "identity")

asc = detail_csv[order(detail_csv$margin_rate),]
asc = head(asc[,c("dishes_name","margin_rate")],5)

b = ggplot(asc,aes(x = dishes_name,y = margin_rate)) + geom_bar(stat = "identity")
grid.arrange(a,b,ncol=2)
