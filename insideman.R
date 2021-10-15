library(XML)


setwd("")

listF <- list.files(path = ".", pattern = "*.scx")

for (j in 1:(length(listF))){
  namef<-listF[j]
  input<-xmlInternalTreeParse(file = namef)
  orders2<-getNodeSet(input, "/A/B/C[1]/D")
  es<-orders2[[1]]
  es2<-gsub(" ", "",paste("D",xmlValue(es)))
  xmlValue(es)<-es2
  saveXML(input,namef)
}

#rm(list = ls())