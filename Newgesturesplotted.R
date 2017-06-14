

Newtrainingdata <- as.matrix(Newtrainingdata)
NewtrainingGesturesData <- Newtrainingdata[,1:75]

NewtrainingGestures.types <- factor(Newgesturetype[,76])



NewtrainingGestures.prcomp <- prcomp(NewtrainingGesturesData, center = TRUE, scale. = TRUE)



f <- ggbiplot(NewtrainingGestures.prcomp, obs.scale = 1, var.scale = 1, 
              groups = gesture.types, ellipse = TRUE, circle = TRUE)



print(f)

