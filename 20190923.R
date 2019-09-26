## https://jjeongil.tistory.com/331?category=691385

#Frequency Table
ans = c("Y", "Y", "N", "Y", "Y")
table(ans) #Frequency
table(ans) / length(ans) #ratio

#bar graph
sum <- table(ans)
barplot(sum, main="ANSWERS")

#Case
head(mtcars)
carb <- mtcars[,"carb"]
table(carb)
barplot(table(carb), main="Carburetors", xlab="The numbera of carburetors", ylab="Frequency")

##display multiple graphs in one window
#make window
par(mfrow=c(1,3))

#plot 1
barplot(table(mtcars$carb), main="the number of carburetors", col="blue")
#plot 2
barplot(table(mtcars$cyl), main="the number of cylender", col="green")
#plot 3
barplot(table(mtcars$gear), main="the number of gears", col="grey")