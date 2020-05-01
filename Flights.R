install.packages("gmodels")
library(gmodels)

install.packages('nycflights13')
library(nycflights13)
flg <-nycflights13::flights

dep_delay<-flg$dep_delay
#to check NA values
is.na(dep_delay)

#Remove NA values
dep_delay1<-dep_delay[!is.na(dep_delay)]

#CI construction
ci(dep_delay1,confidence = 0.95)
View(flg)
arr_del <- flg$arr_delay
arr_del1 <- arr_del[!is.na(arr_del)]
ci(arr_del1,confidence = 0.95)
pt(2.33,79)
2*pt(-1.4,49)
2*(1-pt(7.466,49))
2*pt(-0,49)
2*(1-pt(0,49))
2*pt(-7.466,49)
x  <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)#one sample one tail test
t.test(x, alternative="greater", mu=0.3)
#############2-sample and 2-tail test
Control = c( 91, 87, 99, 77, 88, 91)
Treat = c( 101, 110, 103, 93, 99, 104)
t.test (Control, Treat, alternative="two.sided")
t.test(x, y = NULL, alternative = c("two.sided", "less", "greater"), mu = 0, conf.level = 0.95)

