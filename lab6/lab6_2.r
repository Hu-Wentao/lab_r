myfun=function(x) {
    r = ""
    if(x>=90) r= ("优秀")
    if(x>=80) r= ("良好")
    if(x>=70) r= ("中等")
    if(x>60)  r= ("及格")
    r= ("不及格")
    
    r =paste("你输入的成绩为",x,"分, 对应的等级为",r)
    return (r)
}

print(myfun(10))
print(myfun(60))
print(myfun(70))
print(myfun(80))
print(myfun(90))
print(myfun(100))