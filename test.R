
x<- runif(10)
y<- 3+ 0.3*x +rnorm(10,0,0.5)

fit<- lm(y~x)

par(mfrow=c(2,2))
plot(fit,which = 1:4,caption = c("Residuals",'QQ','Scale','Cooks D'))

add stuff and whatnot

