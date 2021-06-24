print("1.写出统计输出销量排行前10商品的销量及其占比情况")
setwd("./work1")
breakfast = read.csv("breakfast.csv",header=TRUE)
breakfast = data.frame(table(breakfast$Goods))
names(breakfast) = c("Goods","Num")

print(breakfast)