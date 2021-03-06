#Time Series - SMA
library(ttr)
library(forecast)
#MA
#https://www.rdocumentation.org/packages/forecast/versions/8.4/topics/ma
head(wineind)
wineind
str(wineind)
plot(wineind)
sm <- ma(wineind,order=12)
lines(sm,col="red")
smF <- ma(wineind, order=3, centre= F)
head(smF)
#centered
x = ts(runif(25,50,80))
x
forecast::ma(x, order=2, centre=T)

plot(wineind)
csm <- ma(wineind,order=12, centre=T)
lines(csm,col="red")



#method1
#https://rpubs.com/ajaydecis/ts5
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
kings
kingstimeseries <- ts(kings)
kingstimeseries
plot.ts(kingstimeseries)
#install.packages("TTR")
library("TTR")
kingstimeseriesSMA8 <- SMA(kingstimeseries,n=8)
plot.ts(kingstimeseriesSMA8)

?SMA

library(forecast)
fit <- HoltWinters(kingstimeseries, beta=FALSE, gamma=FALSE)
fit1<- ets(kingstimeseries)
forecast(fit, 3)
?ets
plot(forecast(fit, 3)) 
forecast(fit1, 3)
plot(forecast(fit1, 3)) 




#Method2
#https://cran.r-project.org/web/packages/smooth/vignettes/sma.html
require(smooth)
require(Mcomp)
sma(M3$N2457$x, h=18, silent=FALSE)
sma(M3$N2568$x, h=18)

