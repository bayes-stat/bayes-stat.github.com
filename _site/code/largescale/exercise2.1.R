###############Exercise2.1#################
t <- seq(-4, 4, length = 200)
plot(t, qnorm(pt(t, 100)), type = 'n')
abline(0, 1, col = 1)
lines(t, qnorm(pt(t, 10)), col = 2)
lines(t, qnorm(pt(t, 100)), col = 3)
lines(t, qnorm(pt(t, 2550)), col = 4)