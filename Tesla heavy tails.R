a<-read.csv("C:/Users/chand/Downloads/TSLA.csv")
a
ret<-rep(0,length(a$Close)-1)
lret<-rep(0,length(a$Close)-1)
for(i in 1:length(a$Close)-1){ret[i]<-((a$Close[i+1]-a$Close[i])/a$Close[i])}
for(i in 1:length(a$Close)-1){lret[i]<-(log(a$Close[i+1])-log(a$Close[i]))/log(a$Close[i])}
plot(a$Close,main = "Closing price of Tesla stocks over a year",ylab = "Closing price",xlab = "Day")
plot(ret,main = "Returns on closing price on Tesla stocks over a year",ylab = "Returns",xlab = "Day")
plot(lret,main = "Log returns of closing price on Tesla stocks over a year ",ylab = "Log returns",xlab = "Day")
qqnorm(ret,col="red",main = "Normal QQ plot of returns(TESLA)")
qqline(ret,col="blue")
qqnorm(lret,main="Normal QQ plot of logreturn(TESLA)")
qqline(lret,col="blue")