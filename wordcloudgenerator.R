############################################
#only remove when havent installed the package wordlcoud
#install.packages("wordcloud")
##########################################
#install.packages("RColorBrewer")
library(wordcloud)
library(tm)
library(SnowballC)
library(RColorBrewer)

t<-getwd()
class(t)
# reading the text 
lords <- Corpus (DirSource(t))
filepath<-"http://textfiles.com/sex/808-lust.txtt"
text<-readLines(filepath)
# load the data as corpus 
docs<- Corpus(VectorSource(text))
#inspecting purpose 
inspect(docs)
# process of purging starts 

tospace<- content_transformer(function(x,pattern) gsub(pattern," ",x))

docs<- tm_map(docs,tospace,"/" )
docs<- tm_map(docs,tospace,"@")
docs<- tm_map(docs,tospace,"\\|")

#cleaning the text 

#converting to lowercase
docs<- tm_map(docs,content_transformer(tolower))

#remove numbers

docs<- tm_map(docs,removeNumbers)
#############################################
#remove english stopwords
#############################################
docs<- tm_map(docs,removeWords,stopwords("english"))
#################################################
#remove your own stopword
docs<- tm_map(docs,removeWords,c("blabla1","blabla2"))
docs<- tm_map(docs,removePunctuation)
#eliminate extra white space 
docs<- tm_map(docs,stripWhitespace)
#text stemming 
############################################################
docs<- tm_map(docs,stemDocument)
#build term document matrix
#############################################3
dtm<- TermDocumentMatrix(docs)
class(dtm)
m<- as.matrix(dtm)
v<- sort(rowSums(m),decreasing = TRUE)
d<- data.frame(word= names(v),freq= v)
head(d,14)
##################################################
#generate the word cloud
############################################################
set.seed(100)
wordcloud(words = d$word,freq = d$freq,min.freq = 20,random.order = TRUE,rot.per = 0.0,colors = brewer.pal(8,"Dark2"))

