
#' Conteo
#'
#' @param corpus
#'
#' @return conteo
#' @export
#'

conteo<-function(corpus){
  corpus<-gsub("\\.","",corpus)
  corpus<-gsub("\\,","",corpus)
  #Split sentence
  words<-strsplit(corpus," ")
  #Calculate word frequencies
  words.freq<-table(unlist(words))
  analisis<-cbind(names(words.freq),as.integer(words.freq))
  print(analisis)

  return(analisis)}
