date = seq(from=as.Date("1997/05/01"), to=as.Date("1997/05/06"), by="1 day")
Ozone = c(41,36,12,18,NA,28)
Solar.R = c(190,118,149,313,NA,NA)
wind = c(7.4,8.0,12.6,11.5,14.3,14.9)
Temp =c(67,82,74,62,86,66)
data = data.frame(date, Ozone, Solar.R, wind, Temp)
print(summary(data))

print(max(data$wind))

print(mode(data$date))

data$date = as.Date(data$date) 
data$date = format(data$date, "%m, $d %y")
print(data)

print(subset(data,data$Temp>60&data$Temp<70))

print(na.omit(data))

data$Temp[data$Temp>85]=NA
print(data)