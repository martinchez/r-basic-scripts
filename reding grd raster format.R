library(raster)

f<- system.file("external/rlogo.grd", package = "raster")

f

resut<- raster(f)
resut

#getting a specific band
r2<-raster(f, band=2)
r2

#getting all the bands at once using brick function
brick(f) #this gives you all cel values for all the three and thir names

stacking <- stack(f)
stacking

# writting the rayer that has been subjected to raster function
x<- writeRaster(resut,'reultraster',overwrite=TRUE)
x
plot(x)
