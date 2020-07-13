r<- raster(xmn=-110, xmx=-90, ymn=40, ymx=60, ncols=40, nrows=40)
r<- setValues(r,1:ncell(r))
r
crs(r)
plot(r)
