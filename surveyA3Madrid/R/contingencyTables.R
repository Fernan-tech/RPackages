#' Contingency Tables
#'
#' This function creates a cotingency table based on
#' two variables of a dataframe.
#' @param x A variable name given as a character string
#' @param y A variable name given as a character string
#' @param data The name of the dataframe.
#' @return The contingency table of variables x and y
#' @export
#' @examples
#' data(dataSurveyA3)
#' contingencyTables("genero","municipio", dataSurveyA3)
#' contingencyTables("genero","municipio", dataSurveyA3)

contingencyTables <- function(x, y, data) {
  aux<-data[c(x,y)]
  colnames(aux)[which(names(aux)==x)]<-"aux_1"
  colnames(aux)[which(names(aux)==y)]<-"aux_2"
  table(aux$aux_1,aux$aux_2,useNA = c("ifany"))
}
