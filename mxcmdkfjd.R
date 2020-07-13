set.seed(0)
xy <- cbind(x=runif(1000, 0, 100), y=runif(1000, 0, 100))
income<- (runif(1000)* abs((xy[,1]-50)*(xy[,2]-50)))/500
par(mfrow=c(1,3),las=1)
plot(sort(income),col=rev(terrain.colors(1000)), pch=20,cex=.75,ylab='income')

hist(income,main='histogram income',col=rev(terrain.colors(10)),xlim=c(0,5),breaks=seq(0,5,0.5))

plot(xy,xlim=c(0,199),ylim=c(0,100),cex=income,col=rev(terrain.colors(50))[10*(income+1)])


#gini coefficient

n<- length(income)
G<- (2*sum(sort(income)*1:n)/sum(income)-(n+1))/n
G


library(raster)
r1 <- raster(ncol=1, nrow=4, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r1 <- rasterize(xy, r1, income, mean)
r2 <- raster(ncol=4, nrow=1, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r2 <- rasterize(xy, r2, income, mean)
r3 <- raster(ncol=2, nrow=2, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r3 <- rasterize(xy, r3, income, mean)
r4 <- raster(ncol=3, nrow=3, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r4 <- rasterize(xy, r4, income, mean)
r5 <- raster(ncol=5, nrow=5, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r5 <- rasterize(xy, r5, income, mean)
r6 <- raster(ncol=10, nrow=10, xmn=0, xmx=100, ymn=0, ymx=100, crs=NA)
r6 <- rasterize(xy, r6, income, mean)

par(mfrow=c(2,3), las=1)
plot(r1); plot(r2); plot(r3); plot(r4); plot(r5); plot(r6)


par(mfrow=c(1,3), las=1)
hist(r4, main='', col=rev(terrain.colors(10)), xlim=c(0,5), breaks=seq(0, 5, 0.5))
hist(r5, main='', col=rev(terrain.colors(10)), xlim=c(0,5), breaks=seq(0, 5, 0.5))
hist(r6, main='', col=rev(terrain.colors(10)), xlim=c(0,5), breaks=seq(0, 5, 0.5))

A <- c(40, 43)
B <- c(101, 1)
C <- c(111, 54)
D <- c(104, 65)
E <- c(60, 22)
F <- c(20, 2)
pts <- rbind(A, B, C, D, E, F)
pts

plot(pts, xlim=c(0,120), ylim=c(0,120), pch=20, cex=2, col='red', xlab='X', ylab='Y', las=1)
text(pts+5, LETTERS[1:6])
dis <- dist(pts)
dis

sqrt((40-101)^2+(43-1)^2)

D<- as.matrix(dis)





round(D)





