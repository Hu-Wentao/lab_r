print("----------------------------------")
print('已知向量c("f","m","f","f","m")，创建一个因子fc，输出时f对应的标签是female，m对应的标签是male。')
fc = factor(c("f","m","f","f","m"), c("f","m"), labels=c("female","male"),)

print(fc)