Newgesturetype <- NewtrainingGestures

Newtrainingdata <- as.matrix(cbind(NewtrainingGestures[,1:75], namedcol))
colnames(Newtrainingdata)[76] <- "gesture"
Newtrainingdata.num <- as.numeric(Newtrainingdata)
Newtrainingdata.mat <- as.matrix(Newtrainingdata)
Newtrainingdata.matrix <- matrix(Newtrainingdata, nrow = 125, ncol = 76)
