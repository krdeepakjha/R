

Newtrainingdata <- data.matrix(Newtrainingdata)
#NewtrainingGesturesData <- Newtrainingdata[,1:75]

NewtrainingGesturesData <- as.numeric(Newtrainingdata)
NewtrainingGesturesData <- matrix(NewtrainingGesturesData, nrow = 125, ncol = 76)
NewtrainingGesturesData.pc <- NewtrainingGesturesData.pc

NewtrainingGestures.types <- factor(Newgesturetype[,76])



NewtrainingGestures.prcomp <- prcomp(NewtrainingGesturesData.pc, center = TRUE, scale. = TRUE)

#require(tikzDevice)

# choose a name and path for the .tex file
# folder should be the same as where your latex document resides
#tikz( '/home/krdeepakjha/sample.tex' )

f <- ggbiplot(NewtrainingGestures.prcomp, choices = c(1,2), obs.scale = 1,var.scale = 1, 
              groups = NewtrainingGestures.types, ellipse = TRUE, circle = TRUE,
               var.axes = FALSE) +#theme(
                              #axis.title.x=element_blank(),
                              # axis.text.x=element_blank(),
                              # axis.ticks.x=element_blank(),
                              #axis.title.y=element_blank(),
                              # axis.text.y=element_blank(),
                              # axis.ticks.y=element_blank(),
                            #)


# choose a name and path for the .tex file
# folder should be the same as where your latex document resides
 #tikz( '//home/krdeepakjha/Documents/Project report/sample125exp.
print(f)


#dev.off() 