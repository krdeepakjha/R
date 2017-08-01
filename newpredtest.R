#Numeric data as input
#Newnaiveinput <- as.numeric(Newtrainingdata)
#Newnaiveinput <- matrix(Newnaiveinput, nrow = 125, ncol = 76)
#Newnaiveinputgest <- Newnaiveinput
Newnaiveinputgesture <- rbind(Newnaiveinputgest,gesturenamed)

Newnaiveinputgesture <- as.data.frame(Newnaiveinputgesture)
Newnaiveinputgesture$gesture <- as.numeric(factor(Newnaiveinputgesture$gesture, 
                                                  levels = c('1','2','3',
                                                             '4','5'),
                                                  labels = c(1,2,3,4,5)))


#Newnaivetest <- as.data.frame(gesturenamed)
#Newnaivetest$gesture <- as.numeric(factor(Newnaivetest$gesture, 
 #                                         levels = c('1','2','3','4','5'), 
  #                                        labels = c(1,2,3,4,5)))



#namedcol <- naivegesture$gesture

#naivetest <- y
#naivetest <- as.data.frame(y)
#naivetest <- as.numeric(factor(naivetest$gesture, levels = c('1','2','3','4','5'), 
#labels = c(1,2,3,4,5)))

#Splitting the gesture dataset into training and test sets
library(caTools)
set.seed(123)
#Newsplitgesture <- sample.split(Newnaiveinputgesture$gesture, SplitRatio = 0.80)

Newnaivetrain = Newnaiveinputgesture[1:125,]
Newnaivetest =  Newnaivegesture[126:150,]
#naivetest = naivegesture[c(1,2), ]
#Newnaivetrain = Newnaiveinputgesture
#changing the column names as numeric
#colnames(NewtrainingGestures) <- as.numeric(NewtrainingGestures)

#Applying feature scaling
Newnaivetrain[-76] = scale(Newnaivetrain[-76])
Newnaivetest[-76] = scale(Newnaivetest[-76])
#Newnaivetest[-76] <- data.frame(Newnaivetest[-76])


#Applying Dimensionality reduction using PCA to training and test sets 
library(caret)
Newprinciplecomptrain = preProcess(x = Newnaivetrain[-76], method = 'pca', pcaComp = 2)
Newprinciplecomptest = preProcess(x = Newnaivetest[-76], method = 'pca', pcaComp = 2)
Newnaivetrainpca = predict(Newprinciplecomptrain, Newnaivetrain)
Newnaivetrainpca = Newnaivetrainpca[c(2,3,1)]
Newnaivetestpca = predict(Newprinciplecomptest, Newnaivetest)
Newnaivetestpca = Newnaivetestpca[c(2,3,1)]








#Applying Naive Bayes classification model to predict the loan
library(e1071)
Newnaivetrainpca$gesture <- factor(Newnaivetrainpca$gesture)
Newclassify = naiveBayes(x = Newnaivetrainpca[-3], y = Newnaivetrainpca$gesture)


#predicting the Test set results
New.y_predict = predict(Newclassify, newdata = Newnaivetestpca[-3])


#confusion matrix to calculate accuracy

#confusionMatrix(table(Newnaivetestpca[,3], New.y_predict))












