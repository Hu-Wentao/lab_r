temp = airquality$Temp
myserial = ts(temp,start=as.Date("1973-05-01"))
s = as.Date("1973-05-01")
dates = seq(from=s,by=1,length.out=153)
t = data.frame(dates,myserial)
print(t[1:4,])