load("kidneydata.Rda")
write.table(kidneydata,file="kidneydata.txt",sep="\t")
kidneytable=read.table("kidneydata.txt",sep="\t",header = TRUE)
attach(kidneytable)
s=503
zvar=1
N=157
kidneylm=lm(Tot~age)
ureg=predict(kidneylm, data.frame(age = c(55)))
zi=-0.01
ujs=ureg+(1-(N-4)*zvar/s)*(zi-ureg)
ujs