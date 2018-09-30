#create vector to combine into data frame
(rollno.=1:30)
(sname = paste('student',1:30,sep=''))
(grade= sample(c('A','B','C','D'), size=30, replace= T, prob=c(0.4,0.2,0.3,0.1)))
gradeF=factor(grade)
summary(grade)
summary(gradeF)
table(grade)
table(gradeF)
class(gradeF)
(gradeFO=factor(grade , ordered = T))
(gradeFO1=factor(grade , ordered = T, levels=c('B','C','A','D')))
summary(gradeFO1)

(marks = ceiling(rnorm(30, mean=60 ,sd=5)))
(gender= factor(sample(c('M','F'), size=30, replace= T)))
(student1 = data.frame(marks, gradeFO1))
boxplot( marks ~ gradeFO1,data=student1)
boxplot(marks~gradefO1 + gender, data=student1)
boxplot(marks)
summary(marks)
abline(h=summary(marks))
quantile(marks)





#create DF
df1= data.frame(rollno, sname,grade,  stringsAsFactors = F)
df1$grade=factor()
class(df1)
str(df1)
summary(df1)
