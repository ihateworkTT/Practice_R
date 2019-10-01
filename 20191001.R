## https://jjeongil.tistory.com/331?category=691385

#Line graph
month <- 1:12
late <- sample(20,12,replace=T)
plot(month, late, main="the number of Late students", type="l", lty=1, lwd=1, xlab="Month", ylab="count")

#Line graph by group
late1 <- sample(20,12,replace=T)
late2 <- sample(20,12,replace=T)
plot(month, late1, main="the number of Late students", type="l", lty=2, lwd=1.5, col="blue")
lines(month, late2, type="l", lty=3, col="green")
