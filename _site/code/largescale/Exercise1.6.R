baseball=read.table("baseball.txt",sep="\t",header=TRUE)
attach(baseball)
z=Hits/Total
N=18
umle=z
zmean=mean(z)
zvar=zmean*(1-zmean)/45
s=sum((z-zmean)^2)
ujs=zmean+(1-(N-3)*zvar/s)*(z-zmean)
ud <- NULL
for(i in 1:18){
if(z[i]>zmean){ud[i]=max(ujs[i],umle[i]-sqrt(zvar))}
else{ud[i]=min(ujs[i],umle[i]+sqrt(zvar))}
}
plot(z,ud)