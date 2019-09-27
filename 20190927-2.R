## https://jjeongil.tistory.com/331?category=691385
##scatter plot

wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt,mpg,main="car weight - mpg", xlab="car weight", ylab="miles per gallon (m/g)",pch=3, type="p")

#multiple variables

vars <- c("mpg", "disp", "drat", "wt")
target <- mtcars[,vars]
pairs(target,main="Multi Plots")

#catter plot with group info.
a <- iris[,3:4]
point <- as.numeric(iris$Species)
color <- c("red", "blue", "purple")
plot(a, main="Iris Plot", pch=c(point), col=color[point])

##Correlation
