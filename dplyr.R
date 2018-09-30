# data analysis using dplyr
install.packages("dplR")
library(dplyr)
?mtcars
dplyr::filter(mtcars,mpg>25 & am==1)
filter(mtcars, mpg>25 & am==1)
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% summarise(n())
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% count(n())
count(mtcars)

mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by((wt)) %>% summarise (mean(gear)) 
mtcars %>% group_by((carb)) %>% summarise (mean(cyl)) 
mtcars %>% group_by((am)) %>% summarise (mean(carb)) 

# multiple arguments 

filter(mtcars, between(row_number()))