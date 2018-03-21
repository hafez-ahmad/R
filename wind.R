require(RNetCDF)
require(OceanView)

# downloads
Url <- "http://opendap.mohid.com:8080/thredds/fileServer/IST_MM5_METEO/PORTUGAL_3KM_1L_1H/FORECAST/2013082300.nc"

Out <- "2013082000.nc"

#Downloading file - put on local directory  
#download.file(Url, Out, method =  "auto", quiet = FALSE, 
#      mode = "wb", cacheOK = TRUE)

# reading
Nc <- open.nc(Out)
print.nc(Nc)

lat   <- var.get.nc(Nc, "lat") 
lon   <- var.get.nc(Nc, "lon") 
time  <- var.get.nc(Nc, "time") 
bat   <- var.get.nc(Nc, "bathymetry")  
temp  <- var.get.nc(Nc, "air_temperature")
xwind <- var.get.nc(Nc, "x_wind") 
ywind <- var.get.nc(Nc, "y_wind") 

ilist <- 10  # select a time point

# image
pom <- par(oma = c(2, 0, 0, 0))
pma <- par(mar = par("mar") + c( 0, 0,0,2))
F <- quiver2D(xwind[,,ilist], ywind[,,ilist], x = lon, y = lat, 
              by = 5, scale = 1.5, arr.max = 0.2, 
              image = list(z = temp[,,ilist], col = jet2.col(100), x = lon, y = lat),
              contour = list(z = bat, x = lon[,1], y = lat[1,], levels = 0.01, lwd = 2, 
                             drawlabels = FALSE),
              main = paste("wind speed and direction, hour",(time[ilist]-time[1])/3600), 
              xlab = expression(paste("longitude ",degree*E)),
              ylab = expression(paste("latitude ",degree*N)))
maxspeed <- F$speed.max  

legend("bottom", legend = paste("max = ", formatC(maxspeed, digits = 2), "m/s"), 
       bg = "white", cex = 0.7) 

mtext(outer = TRUE, text = "wind speed and direction", side = 3, line = 0, cex = 1.25)

colkey(clim = range(temp[,,ilist], na.rm = TRUE), add = TRUE, width = 0.5, length = 0.5, 
       cex.axis = 0.75, clab = expression(degree*C), cex.clab = 0.75, line.clab = 0.5, 
       col = jet2.col(100))

par(oma = pom)
par(mar = pma)