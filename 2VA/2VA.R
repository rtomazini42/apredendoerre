load("bdims.RData")


fem <- subset(bdims,sex==0)
mean(fem$wgt)
