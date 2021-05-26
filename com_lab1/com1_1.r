data=read.csv("./com_lab1/credit_card.csv")

data= data[-which(data$逾期==1&data$瑕疵户==2)]
data=data[-which(data$呆账==1&data$瑕疵户==2)]
data=data[-which(data$强制停卡记录==1&data$瑕疵户==2)]
data= data[-which(data$退票==1&data$瑕疵户==2)]
data=data[-which(data$拒往记录==1&data$瑕疵户==2)]
data=data[-which(data$呆账==1&data$拒往记录==2)]
data=data[-which(data$强制停卡记录==1&data$拒往记录==2)]
data=data[-which(data$退票==1&data$拒往记录==2)]
data=data[-which(data$频率==5&data$月刷卡额!=1)]


data['历史行为']=data$瑕疵户%%2*1+data$逾期%%2*2+data$呆账%%2*3+data$强制停卡记录%%2*3+data$退票%%2*3+data$拒往记录%%2*3

row=nrow(data)
b=c()
for(i in 1:row){
		if(data[i,'月刷卡额']<=data[i,'个人月收入']){
				if(data[i,'借款余额']==1){
						Economics=1
				}
				if(data[i,'借款余额']==2){
						Economics=0
				}
		}else{
				if(data[i,'月刷卡额']<=data[i,'家庭月收入']){
						if(data[i,'借款余额']==1){
								Economics=2
						}else{
								Economics=1
						}
				}else{
						if(data[i,'借款余额']==1){
								Economics=4
						}else{
								Economics=2
						}
				}
		}
		if(data[i,'个人月开销']<=data[i,'月刷卡额']){
				cash=1
		}else{
				cash=0
		}
		c=Economics+cash
		b=c(b,c)
}
length(b)
data['经济风险情况']=b


d=c()
for(i in 1:row){
	if(data[i,"职业"] %in% c(12:18,20,22)){
		a=0
	}else if(data[i,"职业"] %in% c(8:11)){
		a=1
	}else if(data[i,"职业"]%in% c(1:7,19,21)){
		a=2
	}
	if(data[i,"年龄"]%in% c(1,2)){
		b=1
	}else{
		b=0
	}
	if(data[i,'住家']%in% c(3,4,5)){
		c=0
	}else{
		c=1
	}
	sum=a+b+c
	d=c(d,sum)
}
data['收入风险情况']=d



result=data.frame(data$历史行为,data$经济风险情况,data$收入风险情况)
result2=scale(result)

set.seed(123)
result3=kmeans(result2,5)
result3
result3$centers
table(result3$cluster)

install.packages('fmsb')
library(fmsb)
max=apply(result3$centers,2,max)
min=apply(result3$centers,2,min)
df=data.frame(rbind(max,min,result3$centers))
radarchart(df=df,seg=5,plty=c(1:5),vlcex=1,plwd=2)