###########################################################################
#                前列腺癌结果绘制
###########################################################################

load("prostatedata.Rda")
load("prostz.Rda")

prostatedata[1, ]
prostate <- prostatedata
i <- 1
fun <- function(i) {
  x1 <- prostate[i, 1:50]
  x2 <- prostate[i, 51:102]
  r <- t.test(x1, x2, c("t"))
  z <- qnorm(pt(r$statistic, 100))
  return(z)
}


B <- 80
Z.star <- NULL
for (kk in 1:B) {
  prostate <- prostatedata[, sample(1:102, 102, replace = F)]
  Z.star <- cbind(Z.star, sapply(1:nrow(prostate), fun))
}
#save(Z.star, file = "Z.star.Rda")
load("Z.star.Rda")
Z.star.o <- Z.star
for (kk in 1:80) {
  Z.star.o[, kk] <- Z.star[order(Z.star[, kk]), kk]
}
z.ave <- apply(Z.star.o, 1, mean)

plot(z.ave, prostz[order(prostz)],pch =8, cex = 0.2,  xlim = c(-4, 4))
abline(a=0, b = 1)
pz.o <- prostz[order(prostz)]
delta <- 0.7
TF <- pz.o-z.ave > delta |z.ave-pz.o > delta
plot(z.ave[TF], prostz[order(prostz)][TF],pch =8, cex = 0.2,
     xlab = "perm average z values", ylab = "actual z-values",  xlim = c(-4, 4))
lines(z.ave, prostz[order(prostz)])
abline(a=0, b = 1, col = "darkorchid1", lwd = 1.5)
abline(a =delta, b=1, lty = 3, col = "darkorchid1")
abline(a =-delta, b=1, lty = 3, col = "darkorchid1")
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)

###########################################################################
#                 排列分布的结果是正态分布
###########################################################################
hist(z.ave, breaks = 40, freq = F, main = "排列分布是正态分布")
x <- seq(-4, 4, length = 400)
lines(x, dnorm(x), col =2)

###########################################################################
#                   白血病数据结果
###########################################################################

load("leukdata.Rda")
load("leukz.Rda")
leuk <- leukdata
i <- 1
fun <- function(i) {
  x1 <- leuk[i, 1:47]
  x2 <- leuk[i, 48:72]
  r <- t.test(x1, x2, c("t"))
  z <- qnorm(pt(r$statistic, 70))
  return(z)
}


B <- 70
Z.star <- NULL
for (kk in 1:B) {
  leuk <- leukdata[, sample(1:72, 72, replace = F)]
  Z.star <- cbind(Z.star, sapply(1:nrow(leuk), fun))
}
#save(Z.star, file = "Z.star2.Rda")
load("Z.star2.Rda")
Z.star.o <- Z.star
for (kk in 1:70) {
  Z.star.o[, kk] <- Z.star[order(Z.star[, kk]), kk]
}
z.ave <- apply(Z.star.o, 1, mean)
hist(z.ave, freq = F, breaks = 40)
x <- seq(-6, 6, length = 300)
lines(x, dnorm(x), col = 2)

pz.o <- leukz[order(leukz)]
delta <- 0.7
TF <- pz.o-z.ave > delta |z.ave-pz.o > delta
plot(z.ave[TF], leukz[order(leukz)][TF],pch =8, cex = 0.2,
     xlab = "perm average z values", ylab = "actual z-values",  xlim = c(-4, 4))
lines(z.ave,leukz[order(leukz)])
abline(a=0, b = 1, col = "darkorchid1", lwd = 1.5)
abline(a =delta, b=1, lty = 3, col = "darkorchid1")
abline(a =-delta, b=1, lty = 3, col = "darkorchid1")
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)


