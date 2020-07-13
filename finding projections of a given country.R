
library(rgdal)

epsg <- make_EPSG()

i<- grep("Egypt", epsg$note, ignore.case = TRUE)


epsg[i[1:3], ]
