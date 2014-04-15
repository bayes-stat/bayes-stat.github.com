###############################################
#  不同的alpha水平下,pi_0的估计
###############################################
load('prostz.Rda')
load("DTIdata.Rda")
z.dti <- DTIdata[, 4]
alpha <- seq(0.1, 0.925, by = 0.025)
N <- length(z.dti)
fun1 <- function(alpha0) {
  low <- qnorm(0.5-alpha0/2, 0, 1)
  up <- qnorm(0.5+alpha0/2, 0, 1)
  Njia <- length(z.dti[z.dti >= low & z.dti <= up])
  pi0 <- Njia / (N * alpha0)
  return(pi0)
}
pi0.dti <- sapply(alpha, fun1)

alpha <- seq(0.1, 0.925, by = 0.025)
N <- length(prostz)
fun1 <- function(alpha0) {
  low <- qnorm(0.5-alpha0/2, 0, 1)
  up <- qnorm(0.5+alpha0/2, 0, 1)
  Njia <- length(prostz[prostz >= low & prostz <= up])
  pi0 <- Njia / (N * alpha0)
  return(pi0)
}

pi0.prost <- sapply(alpha, fun1)
plot(alpha, pi0.dti, type = "l",
     ylim = c(0.84, 0.98), lty = 2, xlab = "central percentage alpha0", 
     ylab = "pi0 estimate", lwd = 2, col = 2)
lines(alpha, pi0.prost, lty = 1, lwd = 2)
text(0.1, 0.94, "DTI")
text(0.15, 0.86, "prostate")