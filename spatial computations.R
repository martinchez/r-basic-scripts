##start by installing the packege "sp"
library(sp)
ongitude <- c(-116.7, -120.4, -116.7, -113.5, -115.5, -120.8, -119.5, -113.7, -113.7, -110.7)
latitude <- c(45.3, 42.6, 38.9, 42.1, 35.7, 38.9, 36.2, 39, 41.6, 36.9)
lonlat <- cbind(longitude, latitude)

pts<- SpatialPoints(lonlat)
## checking what kind of object pts is

class(pts)
##finding what is inside this pts

showDefault(pts)
##the objec has both coordinates as well as bbox
##bbox is the bounding box or the spatial extent
##that was computed from the coordinates

##proj4string- stores cordinates reference systems


##adding the crs(coordinate refence systems)


#initializing a object to assign crs

# ADDING  WGS 84 COORDINATE SYSTEMS
crdref<- CRS('+proj=longlat +datum=WGS84')
pts <- SpatialPoints(lonlat,proj4string = crdref)
#loading raster library
library(raster)
pts

## GENERATING RANdom precipitation values same as points

presvalue<- runif(nrow(lonlat),min=0 ,max=100)
df<-data.frame(ID=1:nrow(lonlat),precip=presvalue)

df
##conbining spatialpoints with dataframe

psdf<- SpatialPointsDataFrame(pts,data=df)
psdf

##exploring what is inside
str(psdf)

showDefault(psdf)


#####################