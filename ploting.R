#combined plots
#plot
women
plot(women)
plot(women,type='p',pch=15, col='red' )
plot(women, type='l')
plot(women,type='b')
plot(women ,type='b',pch=18,lty=2,col=2)
plot(women, xlim=c(30,100),ylim=c(min(women$weight)-10,200),pch=10)


plot(women)
abline(lm(women$weight~women$height),col='red',lty=2,lwd=4)

#boxplot
boxplot(women$height)
abline(h=c(58,62,65,68,72))

#draw lines on plot for number summary
summary(women)
quantile(women$height)
quantile(women$height,seq(0,1,.1))
quantile(women$height,seq(0,1,.01))

boxplot(women$height)
#histogram
hist(women$height,breaks=10)

(x=rnorm(100,50,10))
hist(x)
hist(x,freq=F,col=1:5)
lines(density(x))

#density plot :shape of data
plot(density(x),col='red')

#pie
gender
table(gender)
pie(table(gender))
pie(x)
(xlabels =  c('A','B','C','D'))
pie(x,labels=xlabels)
x
x/sum(x)
(labels2 =paste(xlabels,round(x/sum(x),2)*100,sep='-'))
pie(x,labels=labels2 )



#barplot
barplot(x,col=1:4)

#corelation
pairs(women)
cor(women$height,women$weight)
cov(women$height,women$weight)


pairs(mtcars)
cor(mtcars)
pairs(mtcars[1:4])
options(digits=4)
pairs(mtcars['mpg','wt','hp'])  