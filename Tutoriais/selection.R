#1. read in the new data file and set soe variables as factors
volesNEW<-read.table("./Tutoriais/volesNEW.txt", header=T)
volesNEW$ID<-as.factor(volesNEW$ID)
volesNEW$sex<-as.factor(volesNEW$sex)
volesNEW$SIRE<-as.factor(volesNEW$SIRE)
volesNEW$DAM<-as.factor(volesNEW$DAM)

#check structure
str(volesNEW)

library(ggplot2)

summary(volesNEW$fitness)
qplot(fitness, y = ..density.., data = volesNEW, geom = "histogram") + geom_density()

volesNEW$w<-volesNEW$fitness/mean(volesNEW$fitness)

S_size<-cov(volesNEW$w, volesNEW$size)
S_size

S_agg<-cov(volesNEW$w, volesNEW$aggression)
S_agg

cor.test(volesNEW$w, volesNEW$size)          #
cor.test(volesNEW$w, volesNEW$aggression)    #

mod_regress<-lm(aggression~size, data=volesNEW)
summary(mod_regress)
plot(volesNEW$size,volesNEW$aggression)
abline(mod_regress)

linear_sel<-lm(w~size+ aggression, data=volesNEW)
summary(linear_sel)

volesNEW$sizeSD<-volesNEW$size/sd(volesNEW$size)
volesNEW$aggressionSD<-volesNEW$aggression/sd(volesNEW$aggression)   #define variables in SDUs

linear_sel_SD<-lm(w~sizeSD + aggressionSD, data=volesNEW)     #then refit the model
summary(linear_sel_SD)

nonlinear_sel<-lm(w~size+aggression+I(size*size)+I(aggression*aggression)+I(size*aggression), data=volesNEW)
summary(nonlinear_sel)

#plot predicted fitness surface
if(!require(rsm)){install.packages("rsm"); library(rsm)}
contour(nonlinear_sel, size ~ aggression, image=T, labcex=1, nlevels=30)

