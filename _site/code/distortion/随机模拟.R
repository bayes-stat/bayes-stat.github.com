data <- read.table("data.txt", header = F, sep = '')
I <- 17
J <- 16
phi.j <- c(-0.67, -3, -3.69, -4.36, -4.82, -5.47, -5.9, -6.1, -6.2, -6.3, -6.4, 
  -6.55, -7, -7.5, -7.97, -9)
sigma2.j <- c(0.09, 0.36, 0.6, 0.9, 1.16, 1.29, 1.3, 1.31, 1.34, 1.4, 1.5, 1.5,
  1.3, 0.8, 0.24, 0.04)^2
s2.j <- rep(0.198, 17)^2

s2.t.j <- matrix(nrow = I+J, ncol = J)
for (t in I:(I+J)) {
  for (j in 0:(J-1)) {
    s2.t.j[t, j+1] <- (1/s2.j[j+1] + min(c(t-j-1, I))/sigma2.j[j+1])^(-1)
  }
}
   
fun <- function(j) {
  s2.t.j[I, j+1] * (phi.j[j+1]/s2.j[j+1] + 1/sigma2.j[j+1] * sum(log(data[1:min(c(I-j-1, I)), j+2] /  
    data[1:min(c(I-j-1, I)), j+1] - 1)))
}
phi.j.I <- sapply(0:(J-1),fun)
library(MASS)
Phi.J <- NULL
kk <- 1
i <- 1
R <- NULL
R.adj <- NULL
alpha1 <- 0.02
alpha2 <- 1
set.seed(123)
mm <- 10000
varphi <- NULL
X <- list()
for (kk in 1:mm) {
  Phi.J <- rbind(Phi.J, mvrnorm(1, phi.j.I, diag(s2.t.j[I, ])))
  xi <- mvrnorm(I, Phi.J[kk, ], diag(sigma2.j))
  for (i in 1:(I-1)) {
    for (j in 2:(I-i+1)) {
      xi[i, j-1] <- log(data[i, j]/data[i, j-1]-1)
    }
  }
  varphi <- c(varphi, exp(alpha1 * sum(apply(xi, 1, sum)) + alpha2 * sum(Phi.J[kk, ])-
            sum((I*alpha1 + alpha2) * phi.j) - sum((I*alpha1 + alpha2)^2 * s2.j/2) -
            sum(I * alpha1^2 * sigma2.j/2)))
  R.i <- NULL
  X1 <- data
  for(i in 2:I) {
    R.i <- c(R.i, data[i, J-i+2] * (prod(exp(xi[i, (J-i+2):(J)])+1)-1))
    for (j in (J-i+2):(J)) {
      if(j==(J-i+2)) {
        X1[i, j+1] <- data[i, J-i+2] * (prod(exp(xi[i, (J-i+2):(j)])+1)-1)
      }else {
        X1[i, j+1] <- data[i, J-i+2] * (prod(exp(xi[i, (J-i+2):(j)])+1)-prod(exp(xi[i, (J-i+2):(j-1)])+1))  
      }     
    
    }

  }
  X[[kk]] <- X1
  R <- rbind(R, R.i)
  R.adj <- rbind(R.adj, varphi[kk]*R.i)
}
#save(R,R.adj, X, varphi , file = 'moni.RData')
load('moni.RData')
mean(apply(R, 1, sum))
apply(R, 2, mean)
mean(apply(R.adj, 1, sum)) / mean(varphi)-mean(apply(R, 1, sum))
 


 
apply(R.adj, 2, mean)  / mean(varphi)
write.table(apply(R, 2, mean), file = "moni2.csv", 
  sep = ",")
write.table(apply(R.adj, 2, mean)  / mean(varphi), file = "moni.csv", 
  sep = ",")
plot(varphi, apply(R, 1, sum))
hist(apply(R, 1, sum), breaks = 30)
hist(varphi, breaks = 30)
cor(varphi, apply(R, 1, sum))

fun <- function(kk) {
  return(X[[kk]][17,4])  #17, 3/4/5±È½ÏºÏÊÊ
}
Xij <- sapply(1:5000, fun)
hist(varphi, breaks=45)
hist(Xij, breaks = 45)
cor(varphi[1:5000], Xij)
plot(varphi[1:5000], Xij, cex = 0.1, col = rgb(0, 0, 0, 0.3))
abline(lm(Xij~varphi[1:5000]), col = 2, lwd = 2, lty = 2)
abline(v = mean(varphi), col = 3, lwd = 2, lty = 3)
abline(h = mean(Xij), col = 3, lwd = 2, lty = 3)

plot(0, 1, xlim = c(0, 10000), ylim= c(0, 1.3e-3))
lines(density(Xij))
lines(density(Xij * varphi[1:5000]/ mean(varphi)), col = 2)
windows()
plot(0, 1, xlim = c(2000, 14000), ylim= c(0, 0.4e-3))
lines(density(Xij))
lines(density(Xij * varphi[1:5000]/ mean(varphi)), col = 2)
abline(h = 0)



mean(Xij)
mean(Xij * varphi[1:5000]/ mean(varphi))
summary(Xij * varphi[1:5000]/ mean(varphi))
summary(varphi[1:5000])

  
  
  
