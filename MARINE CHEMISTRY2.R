library(AquaEnv)
library(plot3D)

SumCO2.seq <- seq(0.001, 0.002, length.out = 20)
TA.seq     <- seq(0.001, 0.002, length.out = 20)
estimatepH <- function(SumCO2, TA)
  aquaenv(S = 20,    t = 10,    SumCO2 = SumCO2, TA = TA)$pH
Omega      <- function(SumCO2, TA)
  aquaenv(S = 20,    t = 10,    SumCO2 = SumCO2, TA = TA)$omega_calcite

pHouter <- outer(X = SumCO2.seq, Y = TA.seq, FUN = function(X,Y) estimatepH(X, Y))
OMouter <- outer(X = SumCO2.seq, Y = TA.seq, FUN = function(X,Y) Omega(X, Y))

# pH creates the image
image2D(x = SumCO2.seq*1000, y = TA.seq*1000, z = pHouter, 
        col = jet2.col(100), rasterImage = TRUE, las = 1,
        xlab = "SumCO2, micromol/kg-soln", ylab = "TA, mmol/kg-soln",
        clab = "pH", colkey = list(width = 0.5, length = 0.5))

# omega calcite added as contourlines; 1 is special (dissolution/precipitation)
contour2D(x = SumCO2.seq*1000, y = TA.seq*1000, z = OMouter,
          add = TRUE, colkey = FALSE, col = "black", 
          levels = c(0.1, 0.2, 0.5, 1, 2, 4, 8), lwd = c(1, 1, 1, 2, 1, 1, 1))

#legend("bottomright", lty = 1, expression("omega","calcite"))
legend("bottomright", lty = 1, expression(paste(Omega ," calcite")))
