#textmining intall packages
install.packages("wordcloud")
install.packages("KoNLP")
install.packages("RColorBrewer")
install.packages("rJava")

library(rJava)
library(KoNLP)

#if error message appears
#1. https://rstudio-pubs-static.s3.amazonaws.com/390520_0e53f55571474119b82a059e9dc1403d.html
#2. https://puture.tistory.com/393

library(RColorBrewer)
library(wordcloud)

#use korean dic.
buildDictionary(ext_dic="woorimalsam")

#make palette
pal2 <- brewer.pal(8, "Dark2")

#ㅣoad moon.txt
text <- readLines(file.choose())


#group of words
noun <- sapply(text,extractNoun, USE.NAMES=F)

#noun+noun
noun2 <- unlist(noun)

#counting words
wordcount <- table(noun2)
temp <- sort(wordcount, decreasing=T)
temp <- temp[-1] #remove space
barplot(temp, las=2, names.arg=names(temp), col="lightblue", main="Mose frequent words", ylab="Word frequencies")

#Word cloud
wordcloud(names(wordcount), freq=wordcount, scale=c(6,0.7), min.freq=3, random.order=F, rot.per=.1, colors=pal2, family="AppleGothic")

wordcount2 <- wordcount[nchar(wordcount)>1]
wordcloud(names(wordcount2), freq=wordcount2, scale=c(6,0.7), min.freq=3, random.order=F, rot.per=.1, colors=pal2, family="AppleGothic")