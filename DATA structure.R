# Data structures in R

#vectors----
x=1:10 #create seq of nos from 1 to 10
x
x1 <- 1:20 
x1
(x1=1:30)
(x2=c(1,2,3,4,5))
class(x2)
(x3=letters[1:10])

letters[1:26]
LETTERS[1:26]
?c


(x3b = c('a',"Dhiraj","4"))

class(x3b)

(x4=c(T,FALSE,TRUE,T,F))


class(x4)

x5=c(3L,5L)
class(x5)
(x5b = c(1,'a',T,4L))
class(x5b)

#access elements
(x6 = seq(0,100,by=3))
?seq
# [1] 0 2 4 6 8 10
ls()
methods (class='numeric')
x6[20]
length(x6)
x6[3]
x6[c(2,4)]        # access 2nd and 4th element
x6[-1]            #access all but 1st element
x6[-c(1:10)]
x6[c(2,-4)]        # error
x6[-c(1,5,20)]
x6[-(length(x6)-1)]
x6[c(2.4,3.54)]
(x7 = c(x6,x2))
#modify
sort (x6)
sort(x6[-c(1,2)])
sort(x6,decreasing=T)
rev(x6)
seq(-3,10,by=.2)
(x=-3:2)
#[1] -3 -2 -1 0 1 2
x[2]<-0; x#modify 2nd element
#[1] -3 0 -1 0 1 2
x<0
x
x[x<0] = 5 ;x #modify elements lesss than 0
# [1] 5 0 5 0 1 2
x

x=x[1:4];x      #trucate x to first 4 elements
# [1] 5 0 5 0

#delete vector
(x= seq(1,5,length.out = 10))
# [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111 4.555556 5.000000
x= null
x
#null
x[4]
#null

x   1:1000


(x =rnorm(100))    #mean 0 std 1 normal curve
(x1=rnorm(10000,mean=50,sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)
mean(x1)
#matrices----
1:12
100:111
(m1=matrix(1:12,nrow=3))

(m2=matrix(1:12, ncol=3,byrow =T))
x=101:124
length(x)

matrix(x,ncol=6)
class(m1)
#[1] "matrix"
attributes(m1)
#[1] 2 6
dim(m1)
m1

m1[1,2:3]
#access elements of matrix
m1[ c(1,3) ,]
m1[ ,1]
m1[,-c(1,3)]
m1
paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1)=paste('C',1:3,sep=''))

m1
attributes (m1)

#vector to matrix
(m3=1:24)




dim(m3)=c(6,4)
m3

m2[c(1,2),c(2,3)]
m2[,]
m2[-2,]
m2[1:5]

m2[c(TRUE,F,F,F),c(2,3)]  # LOGICAL INDEXING

m2[m2>5 &m2<10]

m1:m2
m1[1:2,1:2]
m1[c('R1'),c('C1','C3')]
#modify vectir
m2
m2[2,2]

m2[2,2]=10 

m2
m2[m2>10]
rbind(m2,c(50,60,70))
cbind(m2,c(50, 60 ,70))
m2
cbind(m2, c(55,65,75,85))
rbind(m2,m2)
# row and col wise summaary

m1

colSums(m1); rowSums(m1)

colMeans(m1);rowMeans(m1)
t(m1) transpose

m1














sweep( m1,MARGIN= 1, STATS = c(2,3,4,5), FUN= "+") 
sweep( m1,MARGIN = 2, STATS= c(2,3,4), FUN = "*")     
      
#add margins

m1
        



addmargins(m1,margin=1, sum)

addmargins (m1,c(1,2),mean)
addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd)))


#arrays----




#data frames----


#factors----

#lists----


#create vector to combined into DF
(rollno=1:30)
(sname = paste('student',1:30,sep=''))
(gender= sample(c('M','F'), size=30, replace= T, prob=c(0.7,0.3)))
(marks =floor(rnorm(30,mean=50,sd=10)))
(marks2= ceiling (rnorm(30,40,5)))
(course = sample (c('BBA','MBA'),size=30, replace=T, prob=c(.7,.3)))
rollno; sname;gender
marks ; marks2;course
table(gender)


#create DF
df1= data.frame(rollno, sname,gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of df
head(df1) #top 6 rows
head(df1,n=3)
tail(df1) # last 6 rows
class(df1)
summary(df1)
df1$gender= factor(df1$gender)   #assigns a numerical value to compute fast
df1$course = factor(df1$course)  #assigns a numerical value or a dummy variable to do regression
str(df1)
summary(df1)
df1
df1$gender
df1[ ,c(2,4)]
df1[ marks>50 & gender=="F",c('rollno','sname','gender','marks')]
names(df1)

