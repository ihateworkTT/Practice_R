## https://jjeongil.tistory.com/331?category=691385
#Test function

paste("Good","Morning", "Tom", sep=" ")
paste("Good","Morning", "Tom", sep="/")
paste(1:10, "is good", sep="_")

a <- "Hello World"
substr(a, 1,5)
substr(a, 7, nchar(a))

#change text
gsub("Hello","Hi",a)
gsub(" ","/",a)