library(raster)
library(rgdal)

datas<- system.file("external/lux.shp", package = "raster")

filename<- shapefile(datas)

filename
crs(filename)

##assigning a coordinate reference systems

pp<- filename

#assigning the existing crs to NA
crs(pp)<- NA
crs(pp)

#ADDING THE NEW crs
 crs(pp)<- CRS("+proj=longlat +datum=WGS84")
crs(pp)



###transforming crs
newcrs <- CRS("+proj=robin +datum=WGS84")

rob<- spTransform(filename,newcrs)
rob
crs(rob)



p2<- spTransform(rob, CRS("+proj=longlat +datum=WGS84"))
crs(p2)






