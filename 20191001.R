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
beers <- sample(10,10,replace=T)
bal <-sample(10,10,replace=T)*0.01
tbl <- data.frame(cbind(beers,bal))

#scatter plot
plot(bal~beers, data=tbl)

#regression model
res=lm(bal~beers, data=tbl)
#regression libe
abline(res)
#correlation analysis
cor(beers,bal)

#correlation among multiple variables
cor(iris[,1:4])