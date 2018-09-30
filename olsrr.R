#mtcars linear regression
#install.packages(olsrr')

library(olsrr)
model<- lm(mpg~disp+hp+wt+qsec,data=mtcars)
k <- ols_step_all_possible(model)
plot(k)
k

#create model and check which model is better
(m1=lm(mpg~hp+wt+qsec ,data=mtcars))
summary(m2)
anova(m1,m2)
