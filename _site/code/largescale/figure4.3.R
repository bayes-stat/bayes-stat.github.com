###############################################
#  DTI数据右侧、左侧检验的FDR（z)值
###############################################
load("DTIdata.Rda")
z <- DTIdata[order(DTIdata[, 4]), 4]
N <- 15443
plot(z, pnorm(z)/((1:N)/N), type = "b", col = 2, ylim = c(0, 1.1), 
     ylab = "Fdrbar(z)", xlab = "z values")
points(z, pnorm(z)/((1:N)/N), col = 2, cex = 0.1)
abline(h = 1, lty = 3)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)
lines(z, (1-pnorm(z))/((N:1)/N), type = "l", col = 1, ylim = c(0, 1.1))
abline(h = 0.1, lty = 3)
abline(h = 0.25, lty = 3)
abline(h = 0.5, lty = 3)

inde <- NULL
for(i  in 1:N){
  if(fun(i)<=0.1) {
    inde <- i;break
  }
}
points(z[inde],0,col="green",pch=17)
text(z[inde],0, 0.1, pos = 3)
points(z[inde],0.1,col="green",pch=16)


inde <- NULL
for(i  in 1:N){
  if(fun(i)<=0.5) {
    inde <- i;break
  }
}
points(z[inde],0,col="green",pch=17)
text(z[inde],0, 0.5, pos = 3)
points(z[inde],0.5,col="green",pch=16)


inde <- NULL
for(i  in 1:N){
  if(fun(i)<=0.25) {
    inde <- i;break
  }
}
points(z[inde],0,col="green",pch=17)
text(z[inde],0, 0.25, pos = 3)
points(z[inde],0.25,col="green",pch=16)
###############################################
#  DTI数据双侧侧检验的FDR（z)值
###############################################
load("DTIdata.Rda")
z <- DTIdata[order(abs(DTIdata[, 4]), decreasing = T), 4]
N <- 15443
plot(abs(z), 2*(1-pnorm(abs(z)))/((1:N)/N), type = "l", col = 2, ylim = c(0, 1.1), 
     ylab = "Fdrbar(z)", xlab = "z values")
abline(h = 1, lty = 3)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)
abline(h = 0.1, lty = 3)
abline(h = 0.25, lty = 3)
abline(h = 0.5, lty = 3)
sum(2*(1-pnorm(abs(z)))/((1:N)/N)<0.1)


###############################################
#  前列腺数据左、右侧侧检验的FDR（z)值
###############################################
load("prostz.Rda")
z <-prostz[order(prostz)]
N <- length(prostz)
plot(z, pnorm(z)/((1:N)/N), type = "l", col = 2, ylim = c(0, 1.1), 
     ylab = "Fdrbar(z)", xlab = "z values")
points(z, pnorm(z)/((1:N)/N), col = 2, cex = 0.1)
abline(h = 1, lty = 3)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)
lines(z, (1-pnorm(z))/((N:1)/N), type = "l", col = 1, ylim = c(0, 1.1))
abline(h = 0.1, lty = 3)
abline(h = 0.25, lty = 3)
abline(h = 0.5, lty = 3)
###############################################
#  前列腺数据双侧侧侧检验的FDR（z)值
###############################################
z <- prostz[order(abs(prostz), decreasing = T)]
N <- length(prostz)
plot(abs(z), 2*(1-pnorm(abs(z)))/((1:N)/N), type = "l", col = 2, ylim = c(0, 1.1), 
     ylab = "Fdrbar(z)", xlab = "z values")
abline(h = 1, lty = 3)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)
abline(h = 0.1, lty = 3)
abline(h = 0.25, lty = 3)
abline(h = 0.5, lty = 3)
sum(2*(1-pnorm(abs(z)))/((1:N)/N)<0.1)

