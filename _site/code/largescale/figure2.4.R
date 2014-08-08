#############################################
#  z值相关性的展示。
#
#############################################
load("DTIdata.Rda")
table(DTIdata[, 1])
table(DTIdata[, 2])
table(DTIdata[, 3])
z <- 36
col <- NULL
inde <- which(DTIdata[, 3]==z)
for (i in 1:length(inde)){
  if (DTIdata[inde[i], 4] > 0) {
    col <- c(col, 2) 
  } else {
    col <- c(col, 3)
  }
}
pch <- NULL
for (i in 1:length(inde)){
  if (DTIdata[inde[i], 4] > 2) {
    pch <- c(pch, 19) 
  } else if(DTIdata[inde[i], 4] > 0) {
    pch <- c(pch, 1)
  }  else if(DTIdata[inde[i], 4] > -2) {
    pch <- c(pch, 0) 
  } else {
    pch <- c(pch, 15)
  }
}
plot(DTIdata[DTIdata[, 3]==z, 1], DTIdata[DTIdata[, 3]==z, 2], 
     pch = pch, col = col, cex = 0.5, xlab = "", ylab = "")
