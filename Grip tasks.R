setwd
model<-read.csv("LM.csv",header = TRUE)
 model
 View(model)
 Hours<-model$Hours
 Scores<-model$Scores
 plot(Hours,Scores)
 plot(Hours,Scores,pch=16,cex=1,col='red',main='Hours v/s Scores',xlab = 'Hours',ylab = 'Scores')
 LM<-lm(Scores~Hours)
 LM
 summary(LM)
 abline(LM)
 coef(LM)
 
score<-data.frame(Hours=9.25)
 predict(LM,score)
 
 