
x<- runif(10)
y<- 3+ 0.3*x +rnorm(10,0,0.5)

fit<- lm(y~x)

par(mfrow=c(2,2))
plot(fit,which = 1:4,caption = c("Residuals",'QQ','Scale','Cooks D'))

hist(x)
hist(y)

input<-c(1:50)/10
plot(input,dgamma(input,2,rate=0.75))

z<-rgamma(10,2,0.75)
fit2<- lm(z~x)
plot(fit2,which = 1:4,caption = c("Residuals",'QQ','Scale','Cooks D'))

fit3<- lm(y~z)
plot(fit3,which = 1:4,caption = c("Residuals",'QQ','Scale','Cooks D'))

