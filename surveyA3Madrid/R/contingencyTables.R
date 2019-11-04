#' Contingency Tables
#'
#' This function creates a cotingency table based on
#' two variables of a dataframe.
#' @param x A variable name given as a character string
#' @param y A variable name given as a character string
#' @param dataset The name of the dataframe. By default, dataSurveyA3
#' @return The contingency table of variables x and y
#' @examples
#' contingencyTables("genero","municipio")
#' contingencyTables("genero","municipio",dataSurveyA3)

contingencyTables <- function(x,y,dataset=dataSurveyA3) {
  aux<-dataset[c(x,y)]
  colnames(aux)[which(names(aux)==x)]<-"aux_1"
  colnames(aux)[which(names(aux)==y)]<-"aux_2"
  table(aux$aux_1,aux$aux_2,useNA = c("ifany"))
}
