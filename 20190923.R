## https://jjeongil.tistory.com/331?category=691385

##Qualitative data
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

##Pie Graph

par (mfrow=c(1,1))

favorite.color <- c("red", "Green", "Yellow", "Blue", "Green", "red", "red")
sum <- table(favorite.color)

pie(sum, main="Favorite Colors")

##Quantitative data
mydata <- sample(1:100, 5) 
mydata.big <- c(mydata, 10^10)

mean(mydata);mean(mydata.big)
median(mydata); median(mydata.big)

mean(mydata, trim=0.2);mean(mydata.big, trim=0.2)

quantile(mydata);quantile(mydata.big)
quantile(mydata, (0:10)/10)

summary(mydata);summary(mydata.big)

fivenum(mydata)

diff(range(mydata)); diff(range(mydata.big))
var(mydata); var(mydata.big)
sd(mydata); sd(mydata.big)

##box plot or Box whisker plot
head(state.x77)

st.income <- state.x77[,"Income"]
boxplot(st.income, ylab="Income value ($)")

boxplot(Petal.Width~Species, data=iris, ylab="Petal.Width (cm)")

##barplot vs histogram
hist(st.income, main="Histogram for Income", ylab="frequency", xlab="income ($)", las=1, breaks=8)

#stem leaf..
score <- sample(1:100,10)
stem(score, scale=2)