library(readr)

testgesture <- read.csv("~/R/new training gestures/fist20.csv",
                        header = FALSE, sep = "," )
x = as.data.frame(testgesture)



combining <- function(circle212){
  
  
  
  
  gmean <- apply(x,2,mean)
  gvar <- apply(x,2,var)
  gmed <- apply(x,2,median)
  gmax <- apply(x,2,max)
  gsd <- apply(x,2,sd)
  y <- cbind(gmean,gvar,gmed,gmax,gsd)
  y <- as.data.frame(y)
  y = stack(y)
  
  y = y[,1]
  return(y)
}
 


 
  