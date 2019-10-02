## https://jjeongil.tistory.com/331?category=691385
#Treemap
install.packages("treemap")
library(treemap)

data(GNI2014)
str(GNI2014)
head(GNI2014)

treemap(GNI2014, index=c("continent", "iso3"), vSize="population", vColor="GNI",type="value", bg.labels="green")

GNI2014$GNI.total <- GNI2014$population * GNI2014$GNI

GNI2014.a <- aggregate(GNI2014[,4:6], by=list(GNI2014$continent),sum)
GNI2014.a$GNI.percap <- GNI2014.a$GNI.total/GNI2014.a$population
treemap(GNI2014.a, index=c("Group.1"), vSize="population", vColor="GNI.percap", type="value", bg.labels="blue")

#Bubble chart
install.packages("MASS")
library(MASS)
data(UScrime)

radius <- sqrt(UScrime$Pop)

symbols(UScrime$U2, UScrime$y, circles=radius, inches=0.4, xlab="unemployment 35-30 males", ylab="crime rate", main="UScrime", bg="skyblue")
text(UScrime$U2, UScrime$y, 1:nrow(UScrime), cex=.8)

#box plot
data(iris)
head(iris)
summary(iris$Petal.Width)
boxplot(iris$Petal.Width, col="pink", ylim=c(0.0,3.0), ylab="Petal width (cm)")

#by group
iris.a <- aggregate(iris$Petal.Width, by=list(iris$Species), mean)
boxplot(Petal.Width~Species, data=iris, col=heat.colors(3), ylim=c(0.0,3.0), main="Petal width of Iris")

#Mosaic plot
a <- sample(1:3,30,replace=T)
b <- sample(1:3, 30, replace=T)

a1 <- data.frame(cbind(a,b))
head(a1)

a1$aa[a1$a == 1] <- "A"
a1$aa[a1$a == 2] <- "B"
a1$aa[a1$a == 3] <- "C"

mosaicplot(~b+aa, data=a1, color=T, main="sample")
mosaicplot(~b+aa, data=a1, color=c("yellow","orange","red"), main="sample")

data(Titanic)
Titanic

mosaicplot(Titanic, color=T)
mosaicplot(Titanic, color=c("red", "green"), off=2)
