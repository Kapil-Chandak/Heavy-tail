library("evir")
library("ptsuite")
a<-read.csv("C:/Users/chand/Downloads/TSLA.csv")
#a
ret<-rep(0,length(a$Close)-1)
lret<-rep(0,length(a$Close)-1)
for(i in 1:length(a$Close)-1){ret[i]<-(a$Close[i+1]/a$Close[i])}
for(i in 1:length(a$Close)-1){lret[i]<-log(a$Close[i+1])/log(a$Close[i])}
plot(a$Close,main = "Closing price of Tesla stocks over a year",ylab = "Closing price",xlab = "Day")
plot(ret,main = "Returns on closing price on Tesla stocks over a year",ylab = "Returns",xlab = "Day")
plot(lret,main = "Log returns of closing price on Tesla stocks over a year ",ylab = "Log returns",xlab = "Day")
qqnorm(ret,col="red",main = "Normal QQ plot of returns(TESLA)")
qqline(ret,col="blue")
qqnorm(lret,main="Normal QQ plot of logreturn(TESLA)")
qqline(lret,col="blue")
hill(ret,main="TESLA")
hill(lret,main="Log TESLA")
pareto_test(ret)
pareto_test(lret)

b<-read.csv("C:/Users/chand/Downloads/AAPL (2).csv")
#b
ret<-rep(0,length(b$Close)-1)
lret<-rep(0,length(b$Close)-1)
for(i in 1:length(b$Close)-1){ret[i]<-(b$Close[i+1]/b$Close[i])}
for(i in 1:length(b$Close)-1){lret[i]<-log(b$Close[i+1])/log(b$Close[i])}
plot(b$Close,main = "Closing price of Apple stocks over a year",ylab = "Closing price",xlab = "Day")
plot(ret,main = "Returns on closing price on Apple stocks over a year",ylab = "Returns",xlab = "Day")
plot(lret,main = "Log returns of closing price on Apple stocks over a year ",ylab = "Log returns",xlab = "Day")
qqnorm(ret,col="red",main = "Normal QQ plot of returns(APPLE)")
qqline(ret,col="blue")
qqnorm(lret,main="Normal QQ plot of logreturn(APPLE)")
qqline(lret,col="blue")
hill(ret,main="APPLE")
hill(lret,main="Log Apple")
pareto_test(ret)
pareto_test(lret)

c<-read.csv("C:/Users/chand/Downloads/INDEX.csv")
#c
ret<-rep(0,length(c$Close)-1)
lret<-rep(0,length(c$Close)-1)
for(i in 1:length(c$Close)-1){ret[i]<-(c$Close[i+1]/c$Close[i])}
for(i in 1:length(c$Close)-1){lret[i]<-log(c$Close[i+1])/log(c$Close[i])}
plot(c$Close,main = "Closing price of S&P 500 over a year",ylab = "Closing price",xlab = "Day")
plot(ret,main = "Returns on closing price of S&P 500 over a year",ylab = "Returns",xlab = "Day")
plot(lret,main = "Log returns of closing price of S&P 500 over a year ",ylab = "Log returns",xlab = "Day")
qqnorm(ret,col="red",main = "Normal QQ plot of returns(S&P 500)")
qqline(ret,col="blue")
qqnorm(lret,main="Normal QQ plot of logreturn(S&P 500)")
qqline(lret,col="blue")
hill(ret,main="S&P 500")
hill(lret,main="Log S&P 500")
pareto_test(ret)
pareto_test(lret)