m = matrix(data= c(1:20),nrow = 4, ncol = 5, byrow = FALSE,)
print('----------------------------------')
print("（1）创建一个4*5的矩阵A如下图所示；")
print(m)
print('----------------------------------')
print("（2）显示第2行第3列的数；")
print(m[2,3])
print('----------------------------------')
print("（3）只显示第3行的数；")
print(m[3,])
print('----------------------------------')
print("（4）只显示第3列的数；")
print(m[,3])
print('----------------------------------')
print("（5）只显示第2至3行第2至3列的数；")
print(m[2:3,2:3])
print('----------------------------------')
print("（6）显示除了第2行外所有的数")
print(m[-c(2),])
print('----------------------------------')
print("（7）显示除了第2列外所有的数。")
print(m[,-c(2)])