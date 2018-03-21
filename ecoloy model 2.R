require(diagram)
par (mar = c(0, 0, 0, 0))
openplotmat()

# position of boxes
elpos <- coordinates (c(1, 1, 1, 1, 1, 1, 1, 1), mx = -0.1)

# segmented arrows
segmentarrow(elpos[7,], elpos[2,], arr.pos = 0.15, dd = 0.3, arr.side = 3)
segmentarrow(elpos[7,], elpos[3,], arr.pos = 0.15, dd = 0.3, arr.side = 3)
segmentarrow(elpos[7,], elpos[4,], arr.pos = 0.15, dd = 0.3, arr.side = 3)

pin   <- par ("pin")         # size of plotting region, inches
xx  <- 0.2
yy  <- xx*pin[1]/pin[2]*0.15  # used to make circles round

sx    <- rep(xx,8)
sx[7] <- 0.05

sy    <- rep(yy,8)
sy[6] <-yy*1.5
sy[7] <- sx[7]*pin[1]/pin[2]

for (i in 1:7) 
  straightarrow (from = elpos[i,], to = elpos[i+1,], lwd = 2, arr.pos = 0.5)

lab <- c("Problem", "Conceptual model", "Mathematical model", "Parameterisation",
         "Mathematical solution", "", "OK?", "Prediction, Analysis")

for (i in c(1:6,8)) 
  textround(elpos[i,], sx[i], sy[i], lab = lab[i])

textround(elpos[6,], xx, yy*2, 
          lab = c("Calibration,sensitivity", "Verification,validation"))

textdiamond(elpos[7,], sx[7], sy[7], lab = lab[7])

textplain(c(0.7, elpos[2,2]), yy*2, lab=c("main components", "relationships"),
          font = 3, adj = c(0, 0.5))
textplain(c(0.7, elpos[3,2]), yy  , lab = "general theory",
          font = 3, adj = c(0, 0.5))
textplain(c(0.7, elpos[4,2]), yy*2, lab = c("literature", "measurements"),
          font = 3, adj = c(0,0.5))
textplain(c(0.7, elpos[6,2]), yy*2, lab = c("field data", "lab measurements"),
          font = 3, adj = c(0,0.5))