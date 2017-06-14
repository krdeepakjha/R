Newnaivegesture <- as.data.frame(Newtrainingdata)
Newnaivegesture$gesture <- as.numeric(factor(Newnaivegesture$gesture, 
                                          levels = c('1','2','3',
                                                     '4','5'),
                                          labels = c(1,2,3,4,5)))

#namedcol <- naivegesture$gesture

#naivetest <- y
#naivetest <- as.data.frame(y)
#naivetest <- as.numeric(factor(naivetest$gesture, levels = c('1','2','3','4','5'), 
#labels = c(1,2,3,4,5)))

#Splitting the gesture dataset into training and test sets
library(caTools)
set.seed(123)
splitgesture <- sample.split(Newnaivegesture$gesture, SplitRatio = 0.80)
Newnaivetrain = subset(Newnaivegesture, splitgesture == TRUE)
Newnaivetest = subset(Newnaivegesture, splitgesture == FALSE)
#naivetest = naivegesture[c(1,2), ]

#changing the column names as numeric
#colnames(NewtrainingGestures) <- as.numeric(NewtrainingGestures)

#Applying feature scaling
Newnaivetrain = scale(naivetrain[-76])
Newnaivetest = scale(naivetest[-76])


#Applying Dimensionality reduction using PCA to training and test sets 
library(caret)
Newprinciplecomptrain = preProcess(x = naivetrain[-76], method = 'pca', pcaComp = 2)
Newprinciplecomptest = preProcess(x = naivetest[-76], method = 'pca', pcaComp = 2)
Newnaivetrainpca = predict(principlecomptrain, naivetrain)
Newnaivetrainpca = naivetrainpca[c(2,3,1)]
Newnaivetestpca = predict(principlecomptest, naivetest)
Newnaivetestpca = naivetestpca[c(2,3,1)]








#Applying Naive Bayes classification model to predict the loan
library(e1071)
Newnaivetrainpca$gesture <- factor(Newnaivetrainpca$gesture)
classify = naiveBayes(x = Newnaivetrainpca[-3], y = Newnaivetrainpca$gesture)


#predicting the Test set results
y_predict = predict(classify, newdata = Newnaivetestpca[-3])


#confusion matrix to calculate accuracy

confusionMatrix(table(Newnaivetestpca[,3], y_predict))












