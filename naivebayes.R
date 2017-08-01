set.seed(3000)
xseq<-seq(-4,4,.01)
densities<-dnorm(xseq, 0,1)
cumulative<-pnorm(xseq, 0, 1)
randomdeviates<-rnorm(1000,0,1)

par(mfrow=c(1,3), mar=c(3,4,4,2))

g = plot(xseq, densities, col="darkgreen",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

#plot(xseq, cumulative, col="darkorange", xlab="", ylab="Cumulative Probability",type="l",lwd=2, cex=2, main="CDF of Standard Normal", cex.axis=.8)
require(tikzDevice)

# choose a name and path for the .tex file
# folder should be the same as where your latex document resides
tikz( "/home/krdeepakjha/Documents/Project report/normal.tex", width = 5, height = 5)
#biplot(gesture.prcomp)
print(g)
dev.off() 