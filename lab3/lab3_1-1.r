print("①创建数据框df")
df = data.frame(
    Name   = c("张三", "李四", "王五", "赵六", "丁一" ),
    Sex    = c( "女", "男", "女", "男", "女"),
    Age    = c( "14", "15", "16", "14", "15"),
    Height = c( "156", "165", "157", "162", "159"),
    Weight = c( "42.0", "49.0", "41.5", "52.0", "45.5"),
    row.names = NULL, check.rows = FALSE, check.names = TRUE, stringsAsFactors = default.stringsAsFactors())
print(df)

print("----------------------------------------------------")
print("②输出张三、李四二行的信息；")
print(
    df[c(
        which(df$Name == '张三'),
        which(df$Name == '李四')
    ),]
)

print("----------------------------------------------------")
print("③输出Name、Age两列信息；")
print(
    df[c("Name","Age")]
)

print("----------------------------------------------------")
print("④输出Name、Height、Weigth三列信息；")
print(
    df[c("Name","Height", "Weight")]
)
print("----------------------------------------------------")
print("⑤作为向量引用Age列；")
cc = df[["Age"]];
print(cc)

print("----------------------------------------------------")
print("⑥输出Height>160的Name")
library(sqldf, help, pos = 2, lib.loc = NULL)
print(
    sqldf("select Name from df where Height>160")
)


