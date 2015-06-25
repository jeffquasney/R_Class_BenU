ex1 <- c(7,39,13,9, 25,8,22,0,2,18,2,30,7,35,12,15, 8,6,5,29, 0,11, 39,16,15)
hist(ex1, main = "Minutes Reading Newspaper", xlab = "Minutes")

ex2 <- c(7, 4, 18, 4, 9, 8, 8, 7, 6, 2, 9, 5, 9, 12, 4, 14, 15, 7, 10, 2, 3, 11, 4, 4, 9, 12, 5, 3)
hist( ex2 ) -> ex2_sums
ex2_sums$counts <- cumsum(ex2_sums$counts)
plot( ex2_sums, main = "Gasoline Purchases in Gallons", xlab = "Gallons" )

ex3 <- c(13, 11, 10, 10, 3, 2, 10, 9, 7, 4, 4, 9, 8, 5, 5, 4, 3, 1, 7, 5, 5, 8, 7, 7, 3, 2, 4, 4, 3, 2)
stripchart(ex3, main = "2015 NHL Playoff Goal Leaders", xlab = "Goals")

ex4 <-c(2, 4, 1, 5, 7, 2, 5, 4, 4, 2, 3, 6, 4, 3, 5, 2, 0, 3, 5, 9, 4, 5, 2, 1, 3, 6, 7, 2)
boxplot(ex4, main = "Time Spent on Facebook Per Day of 30 Randomly Sampled People", ylab = "Hours spent")

ex5 <- seq(1, 10)
ex5

ex6 <- rep(seq(1,3), 3) # I may be interpreting the question wrong here
ex6

ex7 <- seq(100, 1000, 100)
ex7

ex8 <- c(LETTERS)
ex8

list.files()
getwd()
setwd('/home/rstudio/Dropbox/Datasets/R_Class_BenU')
getwd()

install.packages("gdata")
library(gdata)
ex9 = read.xls("NBA_PPG_Season.xls")
summary(ex9)
names(table(ex9))[table(ex9)==max(table(ex9))]

data(mtcars)
summary(mtcars$mpg[mtcars$cyl==8])
sd(mtcars$mpg[mtcars$cyl==8])
plot(mtcars$hp, mtcars$mpg, main="MPG by HP", xlab = "HP", ylab = "MPG", +
       xlim = c(0,max(mtcars$hp)), +
       ylim=c(0, max(mtcars$mpg)))
abline(lm(mtcars$mpg ~ mtcars$hp))

my_mtcars <- mtcars
my_mtcars$type <- c("Unclassified")
my_mtcars$type[my_mtcars$cyl==4] <- "Economy"
my_mtcars$type[my_mtcars$cyl==6] <- "Sport"
my_mtcars$type[my_mtcars$cyl==8] <- "Exotic"
my_mtcars


ex11_f_median <- function(vect_in) {
  median(vect_in, na.rm = TRUE)
}
ex11_f_median(1:10)
