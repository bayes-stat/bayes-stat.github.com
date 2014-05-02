###########################################
#前列腺数据的z值具有对称性，因此双边检验相当于左右检验的加总
#DTI z values的非对称性是造成“检验浪费的主要原因
###########################################
par(mfrow=c(1, 2))
load('prostz.Rda')
hist(prostz, breaks = 70, col = 3, 
     xlab = "z values" , main = "prostate z value", freq = F)
x <- seq(-4, 4, length = 500)
lines(x, dnorm(x), lwd = 2)
text(2, 0.3, "N(0, 1)")
arrows(1, 0.27, 1.5, 0.3, length = 0.1)

load("DTIdata.Rda")
hist(DTIdata[, 4], breaks = 70, col = 3, 
     xlab = "z values" , main = "DTI z value", freq = F)
x <- seq(-4, 4, length = 500)
lines(x, dnorm(x), lwd = 2)
text(2, 0.3, "N(0, 1)")
arrows(1, 0.27, 1.5, 0.3, length = 0.1)