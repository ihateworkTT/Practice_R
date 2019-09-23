#vecter
v1 <- c(1,2,3)

#serial numbers vector
v2 <- c(1:10)

#sequential
v3 <- seq(1,10,2)
v4 <- seq(0,1,0.1)

#repeat
v5 <- rep(1, 5)
v6 <- rep(1:3, 2)
v7 <- rep(1:3, each=2)

#give name
v8 <- c(30, 40, 50)
names(v8) <- c("AAA", "BBB", "CCC")

#extract one value
v9 <- c(runif(5))*100
v9[4]
v9[1:2]
v9[c(1,4)]
v9[seq(1,5,2)]

v9[-2]
v9[-c(3:4)]

#extract value by name
v10 <- c(2090, 2450, 960) #GNP
names(v10) <- c("KOR", "JAP", "NEP")
v10[1]
v10["KOR"]
v10[c("KOR", "JAP")]

#calculation
v11 <- c(1:5)
v11*2
v11-3

#merge two vectors
v12 <- c(runif(3)*100)
v13 <- c(runif(5)*100)
v14 <- c(v12,v13)

#sum vectors
v15 <- c(runif(3)*100)
v16 <- v12 + v15

#functions
v17 <- c(1:10)
sum(v17)
sum(v17*2)
length(v17)
mean(v17)
mean(v17[2:6])
max(v17)
min(v17)
sort(v17)
sort(v17, decreasing=FALSE)
sort(v17, decreasing=TRUE)
sort(v17, T)
median(v17)
