temp = airquality$Temp
myserial = ts(temp,start=as.Date("1973-5-1"),frequency=12)
print(myserial)