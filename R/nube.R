
#' Nube
#'
#' @param text
#'
#' @return nube.palabra
#' @export
#'
#' @importFrom tm VectorSource
#' @importFrom tm Corpus
#' @importFrom tm TermDocumentMatrix
#' @importFrom wordcloud wordcloud
#' @importFrom RColorBrewer brewer.pal

nube<-function(text){

  vs_text<-VectorSource(text)
  corpus_text<-Corpus(vs_text)
  tdm<-TermDocumentMatrix(corpus_text)
  m<-as.matrix(tdm)
  v<-sort(rowSums(m),decreasing = T)
  df_text<-data.frame(word=names(v),freq=v)

  wordcloud(words = df_text$word,
            freq = df_text$freq,
            min.freq = 1,
            max.words = 10,
            random.order = FALSE,
            rot.per = 0.35,
            colors = brewer.pal(8, "Dark2"))}
