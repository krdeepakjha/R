library(readr)

testgesture <- read.csv("~/R/new training gestures/circle29.csv", 
                     header = FALSE, sep = "," )
x = as.matrix(testgesture)




combining = function(x){

  gmean <- apply(x,2,mean)
  gvar <- apply(x,2,var)
  gmed <- apply(x,2,median)
  gmax <- apply(x,2,max)
  gsd <- apply(x,2,sd)
  y <- cbind(gmean,gvar,gmed,gmax,gsd)
  y <- data.frame(unlist(unname(y)), stringsAsFactors = FALSE)
  y = stack(y)
  
  y = y[,1]
  y = t(y)
  
  


  
}
   circle29 <- y

   
      
   