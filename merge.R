f<- system.file("external/lux.shp", package="raster")
library(raster)
p<- shapefile(f)

p

par(mai=c(0,0,0,0))
plot(p)

## geometry and attributes
d<- data.frame(p)
d

#showing the attributes of the head data
head(d)
g<- geom(p)
head(g)


#extracting variables
p$NAME_2
crs(p)



p[,'NAME_2']


set.seed(0)
p$new<-sample(letters,length(p))
p

#getting the total values of a grid

p$new <- NULL
##########################################3
##merge

dfr<- data.frame(District=p$NAME_1, Canton=p$NAME_2,Value=round(runif(length(p),100,100)))
dfr<- dfr[order(dfr$Canton), ]

pm<- merge(p,dfr,by.x=c('NAME_1', 'NAME_2'), by.y=c('District', 'Canton'))
pm
i<- which(p$NAME_1=='Greenmacher')
g<- p[i,]
g


#appending

z <- raster(p, nrow=2, ncol=2,vals=1:4)
names(z)<-'Zone'

z<- as(z,'SpatialPolygonsDataFrame')
z
z2 <- z[2,]
plot(p)
plot(z, add=TRUE, border='blue', lwd=5)
plot(z2, add=TRUE, border='red', lwd=2, density=3, col='red')




b<- bind(p,z)
head(b)
tail(b)


pa<- aggregate(p, by='NAME_1')
za<- aggregate(z)

plot(za, col='light gray', border='light gray', lwd=5)
plot(pa, add=TRUE, col=rainbow(3), lwd=3, border='white')


zag <- aggregate(z, dissolve=FALSE)
zag

e <- erase(p, z2)
e <- p - z2
plot(e)
i<- intersect(p,z2)
plot(i)
i<- p*z2
plot(i)
e<- extent(6,6.4,49.7,50)
pe<- crop(p,e)
plot(p)
plot(pe,col='light blue',add=TRUE)
plot(e,add=TRUE,lwd=3,col='red')

u<- union(p,z)
u
