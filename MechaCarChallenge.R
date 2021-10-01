#package dplyr
library(dplyr)
#loading MechaCar_mpg.csv
data1<- read.csv('MechaCar_mpg.csv')
lm1<- lm(mpg~.,data1)
summary(lm1)

#loading Suspension_Coil.csv
data2<- read.csv('Suspension_Coil.csv')
attach(data2)
total_summary<- summarize(data2,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary<- data2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


#T-test
t.test(data2$PSI,mu = 1500)

#T-test lot1
data2_lot1 <- data2[data2$Manufacturing_Lot=="Lot1",]
t.test(data2_lot1$PSI,mu = 1500)

#T-test lot2
data2_lot2 <- data2[data2$Manufacturing_Lot=="Lot2",]
t.test(data2_lot2$PSI,mu = 1500)

#T-test lot3
data2_lot3 <- data2[data2$Manufacturing_Lot=="Lot3",]
t.test(data2_lot3$PSI,mu = 1500)
