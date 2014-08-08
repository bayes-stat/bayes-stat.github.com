###################################
#  DTI z值直方图
###################################
load("DTIdata.Rda")
hist(DTIdata[, 4], breaks = 70, col = 3, 
     xlab = "z values" , main = "", freq = F)
x <- seq(-4, 4, length = 500)
lines(x, dnorm(x), lwd = 2)
text(2, 0.3, "N(0, 1)")
arrows(1, 0.27, 1.5, 0.3, length = 0.1)
windows()
###################################
#  DTI p值直方图
###################################
hist(pnorm(DTIdata[, 4]), breaks = 70, col = 3,
     xlab = "p values" , main = "", freq = F)
abline(h=1)
