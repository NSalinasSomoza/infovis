library(tm) 
library(wordcloud)

base=readLines(file("InfoVis.txt", encoding = "UTF-8"))

texto = VCorpus(VectorSource(base))
texto=tm_map(texto,content_transformer(tolower))
texto=tm_map(texto, removePunctuation)
texto=tm_map(texto, removeNumbers)
textoSinStop=tm_map(texto, removeWords, stopwords("english"))

wordcloud(texto,col=rainbow(20),rot.per=1)
wordcloud(textoSinStop, col=rainbow(20),rot.per=0.75)
