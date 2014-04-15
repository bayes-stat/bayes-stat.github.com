#############################################
#  FDR的拒绝边界和FWER拒绝边界
#############################################
N <- 100
inde <- 1:N
q <- 0.1
alpha <- 0.1
plot(inde, q * inde / N, type = "l", lwd = 2,
      xlab = "index i", ylab = "threshold i")
lines(inde, alpha / (N - inde + 1), lty = 2, col = 2, lwd = 2)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)

#############################################
#  FDR的拒绝边界和FWER拒绝边界，在前列腺数据中的展示
#############################################
load("prostz.Rda")
N <- 6033
inde <- 1:50
q <- 0.1
alpha <- 0.1
plot(inde, q * inde / N, type = "l", lwd = 2,
      xlab = "index i", ylab = "ordered p-value", ylim = c(0, 14e-4))
lines(inde, alpha / (N - inde + 1), lty = 2, col = 2, lwd = 2)
abline(h = 0, lty = 3)
abline(v = 0, lty = 3)
#hist(prostz)
order(prostz)
points(1:50, 1-pnorm(prostz[order(prostz)[6033:(6033-49)]]), pch =8, 
       cex = 0.5, col = rgb(0, 0, 0, 0.5))