pnorm(qnorm(0.05)+0.1)

x <- seq(0, 20, length = 200)
y <- 1-pnorm(qnorm((1-pnorm(x, 10, 2)))+2)

y1 <- pnorm(x, 10, 2)
plot(x[-1], (y1[-1]-y1[-200]) / (20/200),type = "l")
lines(x, dnorm(x, 10, 2), col = 2)


plot(x, dnorm(x, 10, 2), type = "l")
lines(x[-1], (y[-1]-y[-200]) / (20/200), col = 2)


x <- seq(0, 3, length = 4000)
y <- 1-pnorm(qnorm((1-plnorm(x, 0, 1/2)))+0.5)
plot(x, dlnorm(x, 0, 1/2), type = "l")
lines(x[-1], (y[-1]-y[-4000]) / (3/4000), col = 2)
abline(h=0)


load("moni.Rdata")


