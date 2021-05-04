df = data.frame(
    Name   = c("张三", "李四", "王五", "赵六", "丁一" ),
    Sex    = c( "女", "男", "女", "男", "女"),
    Age    = c( "14", "15", "16", "14", "15"),
    Height = c( "156", "165", "157", "162", "159"),
    Weight = c( "42.0", "49.0", "41.5", "52.0", "45.5"),
    row.names = NULL, check.rows = FALSE, check.names = TRUE, stringsAsFactors = default.stringsAsFactors())

vec=c(5,7,8,2,4,3,9,0,1,2);

dec=matrix(LETTERS[1:6],nrow=3); 

print("----------------------------------")
print(" ①用以上三个向量创建列表st,其中三个元素分别命名VEC、DEC和DF") 

st= list(vec,dec, df)
print(st)

print("----------------------------------")
print(" ②输出第一个元素；") 
print(st[1])
print("----------------------------------")
print(" ③作为向量引用第一个元素") 
cc = st[1]
print(cc)