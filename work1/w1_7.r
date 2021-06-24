print("1.创建名为df的数据框")
name = c("张三","李四", "王五","赵六", "丁一")
sex = c("女","男","女","男","女")
age = c(13,13,113,131,11)
height = c(121,622,33,44,455)
weight = c(11,22,33,44,55)

df = data.frame(name, sex, age, height, weight)

print(df)

print("2.输出name为张三或李四的信息")
s = subset(df,name=="张三"|name=="李四")
print(s)

print("3.输出name,age两列信息")
s = df[,c("name","age")]
print(s)

print("4.作为向量引用age列")
s = df$age
print(s)

print("5.输出height,>160的name")
# s = subset(df$name,height>160)
s = df[which(df$height>160), "name"]
s = df
print(s)