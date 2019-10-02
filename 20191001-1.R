## https://jjeongil.tistory.com/331?category=691385
#if
a <- 10
b <- 20

if (a>5  & b>5) {print (a+b)} #and
if (a>5 | b>30) {print (a+b)} #or

#if else
a <-10
if (a>5) {print (a)} else {print (a*10)}
ifelse(a>5, print(a), print(a*10))

#for
for(i in 1:3) {print(i)}

sum<-0
for(i in 1:5){sum<-sum+i}
sum

#for + if
for(i in 1:10){if(i%%2==0){print(i)}}

v1 <- 101:200
for(i in 1:length(v1)){ifelse(v1[i]%%2==0,print(v1[i]*2),print(v1[i]-1))}

#for + while
i=1
while(i <= 10){print(i)
	i <- i+1}

#subset
subset(iris, Sepal.Length >= 5.0 & Sepal.Length <=6.0)[,1:2]

#user defined function
mymax <- function(x,y){
	num.max <- x
	if (y>x){num.max <- y}
	return(num.max)
}
mymax(10,15)
mymax(10,5)

#apply
apply(iris[,1:4],1,mean)  #by row
apply(iris[,1:4],2,mean) #by column

#lapply, list format
lapply(iris[,1:4],mean)
head(iris)

#sapply simplify=F -> list, =T -> vector
sapply(iris[,1:4],mean)
sapply(iris[,1:4],mean, simplify=F)

sapply(iris[,1:4],max)-sapply(iris[,1:4],min)