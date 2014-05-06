load('prostz.Rda')
load("DTIdata.Rda")

alpha <- seq(0.1, 0.925, by = 0.025)
N <- length(prostz)
fun1 <- function(alpha0) {
  low <- qnorm(0.5-alpha0/2, 0, 1.00)
  up <- qnorm(0.5+alpha0/2, 0, 1.00)
  Njia <- length(prostz[prostz >= low & prostz <= up])
  pi0 <- Njia / (N * alpha0)
  return(pi0)
}

pi0.prost1 <- sapply(alpha, fun1)

plot(alpha, pi0.prost1, type = "l", ylim = c(0.84, 1))



alpha <- seq(0.1, 0.925, by = 0.025)
N <- length(prostz)
fun1 <- function(alpha0) {
  low <- qnorm(0.5-alpha0/2, 0, 1.06)
  up <- qnorm(0.5+alpha0/2, 0, 1.06)
  Njia <- length(prostz[prostz >= low & prostz <= up])
  pi0 <- Njia / (N * alpha0)
  return(pi0)
}

pi0.prost <- sapply(alpha, fun1)

lines(alpha, pi0.prost,lty = 3)


