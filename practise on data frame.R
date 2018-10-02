#practise ximb
#create a=100 row DF with following variables
#gender, spl ,age, experience, grade , placement
head (students1)
str(students1)

(gender = sample(c('M','F'), size=100, replace=T))

(experience = floor(rnorm(100,mean= 4,sd=1)))

(course = sample(c('Marketing','Finance','HR'), size=100, replace=T))
  
(placement = sample(c('yes','no') , size=100 ,replace = T))  
(grades= sample(c('A','B','C','D'),size=100, replace=T))
(age= sample(c(21:30),size = 100, replace = T))

gender;course;experience    

#data frame
df1 = data.frame ( gender, experience, grades, course, placement, age)
df1
str(df1)
head(df1)
class(df1)
summary(df1)
table(df1)
(gradesFactor= factor(grades))
(gradesFactorOrdered = factor(grades, ordered=T))
summary(gradesFactor)
summary(gradesFactorOrdered)
(gradesFactorOrderedLevels = factor(grades, ordered=T, levels=c('D','C','B','A')))
summary(gradesFactorOrderedLevels)

pie(summary(gradesFactorOrderedLevels))
pie(summary(gradesFactor))

library(dplyr)
names(student1)
df1 %>% group_by(placement,gender)  %>% summarise(mean(experience) , max(experience) , mean(age))

#plot graphs
hist(df1$age)
t1 =table(df1$placement)
barplot(t1,col=1:2)
boxplot(df1$age)
pairs(df1[,c('age','experience')])
par(mfcol=c(1,1))

#filter
df1 %>% filter(course=='HR') %>% summarise (mean(age),mean(experience))
df1 %>% filter(spl=='HR') %>% summarise (mean(age),mean(experience))


df1 %>% group_by(course,gender) %>% arrange(course, gender , experience) %>% top_n(1,experience)

#save file as excel and vice versa
write.csv (df1 , './data/ximb.csv')
df2 =read.csv('./data/ximb.csv')
head(df2)



#clustering
km3 =kmeans(df1[,c('age','experience')], centers=3)
km3
km3$centers
plot(df1[,c('age','experience')], col=km3$cluster)


#decision tree
library(rpart)
library(rpart.plot)

tree= rpart(gender~. ,data = df1)
tree
rpart.plot(tree, nn=T ,cex=.8)
printcp(tree)
prune(tree, cp=0.3)
ndata=sample_n(df1,3)
ndata
predict(tree,newdata=ndata,  type='class')
predict(tree , newdata=ndata , type= 'prob')
#logistic regression

logitmodel1 =glm(gender~.,data =df1, family='binomial')
summary (logitmodel1)
logitmodel2 = glm(gender~ age + placement , data = df1,family='binomial')
summary (logitmodel2)


#linear regression

linear1 = lm(age~. , data=df1)
summary(linear1)
