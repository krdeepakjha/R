circle <- gesture.factored[1:5,76]

circle <- do.call(rbind, replicate(25,circle, simplify = FALSE))
circle <- circle[,1]
circle <- as.matrix(circle)
colnames(circle)[1] <- "gesture"



fist <- gesture.factored[6:10,76]

fist <- do.call(rbind, replicate(25,fist, simplify = FALSE))
fist <- fist[,1]
fist <- as.matrix(fist)


leftswipe <- gesture.factored[11:15,76]

leftswipe <- do.call(rbind, replicate(25,leftswipe, simplify = FALSE))
leftswipe <- leftswipe[,1]
leftswipe <- as.matrix(leftswipe)


singletap <- gesture.factored[16:20,76]

singletap <- do.call(rbind,replicate(25,singletap, simplify = FALSE))
singletap <- singletap[,1]
singletap <- as.matrix(singletap)


tick <- gesture.factored[21:25,76]

tick <- do.call(rbind,replicate(25,tick, simplify = FALSE))
tick <- tick[,1]
tick <- as.matrix(tick)







