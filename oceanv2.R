setwd("E:/r")
library(RNetCDF)
library(plot3Drgl)
Directory <- "ftp://ftp.ifremer.fr/ifremer/argo/geo/atlantic_ocean/2012/01/"
files <- paste("2012010",1:9,"_prof.nc", sep = "")
files <- c(files, paste("201201",10:31,"_prof.nc", sep = ""))
Listfiles <- list.files()
for (ff in files) {
  if (!ff %in% Listfiles) 
    download.file(paste(Directory,ff, sep = ""), ff, 
                  method =  "auto", quiet = FALSE, mode = "wb", cacheOK = TRUE)
}

if (!"argo.rda" %in% Listfiles) {
  longitude <- latitude <- Time <- press <- temp <- sal <- oxy <- list()
  for (i in 1:length(files)) {
    
    D.nc <- open.nc(files[i])
    lon        <- var.get.nc(D.nc, 'LONGITUDE')     # longitude, degrees east    
    lat        <- var.get.nc(D.nc, 'LATITUDE')      # latitude, degrees north    
    Time[[i]]  <- var.get.nc(D.nc, 'JULD')          # time in julian day since 1950
    press[[i]] <- var.get.nc(D.nc, 'PRES_ADJUSTED') # pressure in decibar    
    temp[[i]]  <- var.get.nc(D.nc, 'TEMP_ADJUSTED') # temperature, dg C
    sal[[i]]   <- var.get.nc(D.nc, 'PSAL_ADJUSTED') # salinity, psu
    oxy[[i]]   <- var.get.nc(D.nc, 'DOXY_ADJUSTED') # dissolved oxygen, microM/kg
    
    longitude[[i]] <- matrix(nrow = nrow(temp[[i]] ), ncol = ncol(temp[[i]] ), 
                             byrow = TRUE, data = lon )
    latitude[[i]]  <- matrix(nrow = nrow(temp[[i]] ), ncol = ncol(temp[[i]] ), 
                             byrow = TRUE, data = lat )
    pmin <- min(-press[[i]] , na.rm = TRUE) 
  }
  argo <- list (longitude = longitude, latitude = latitude, 
                Time = Time, press = press, temp = temp, sal = sal, oxy = oxy)
  save(file = "argo.rda", argo) 
  
  ## Assuming data have been saved already, start from here:
  
library(OceanView)
  
load(file = "argo.rda")
  xlim <- c(-90, 50)
  ylim <- c(-70, 70)
  ii <- which (Hypsometry$x >= xlim[1] & Hypsometry$x <= xlim[2])
  jj <- which (Hypsometry$y >= ylim[1] & Hypsometry$y <= ylim[2])
  
  mx <- Hypsometry$x[ii]
  my <- Hypsometry$y[jj]
  mz <- Hypsometry$z[ii,jj]
  mz [ mz > 0] <- 0
  
persp3D(x = mx, y = my, z = mz, col = "grey", plot = FALSE,
          main = "argo floats, januari 2012", cex.main = 2)
  
  clim <- range(argo$temp, na.rm = TRUE)
  with (argo, 
        for (i in 1:length(Time)) {
          pmin <- min(-press[[i]] , na.rm = TRUE) 
          scatter3D(longitude[[i]], latitude[[i]], -press[[i]] , colvar = temp[[i]] ,   
                    plot = FALSE, add = TRUE, pch = 16, cex = 0.6, clim = clim, 
                    colkey = FALSE, NAcol = "transparent")
        }
  )
  
plotrgl(smooth = TRUE, lighting = TRUE)