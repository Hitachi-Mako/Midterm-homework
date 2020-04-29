library(readr)
library(xlsx)
library(jiebaR)
library(jiebaRD)
library(wordcloud2)
news<-read.xlsx("D:/体育-词云.xlsx",sheetIndex = 1, encoding ='UTF-8')
stopwords<-read_table("D:/word.txt")
tag<-news$X0
mixseg<-worker("mix")
tmp<-segment(tag,mixseg)
freq<-table(tmp)



wordcloud2(freq,minSize=3,shape='cardioid')



tmp<-tmp[which(tmp!="的")]
tmp<-tmp[which(tmp!="是")]
tmp<-tmp[which(tmp!="微博")]
tmp<-tmp[which(tmp!="视频")]
tmp<-tmp[which(tmp!="体育")]
tmp<-tmp[which(tmp!="真的")]
tmp<-tmp[which(tmp!="99898")]
tmp<-tmp[which(tmp!="原来")]
tmp<-tmp[which(tmp!="了")]
tmp<-tmp[which(tmp!="在")]
tmp<-tmp[which(tmp!="10219")]
tmp<-tmp[which(tmp!="真的")]
