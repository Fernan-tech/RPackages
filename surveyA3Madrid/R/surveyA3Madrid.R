#' surveyA3Madrid: A package with travel survey data from A3 Eastern Corridor, Madrid, Spain.
#'
#' This package contains information about a travel survey data carried out in September-October 2018
#' in two municipalities of the A3 Eastern Corridor Madrid: Rivas and Arganda. The package includes a sample function to create
#' contingency tables in a simple way.
#'
#' @docType package
#' @name surveyA3Madrid
#' @author Fernando Romero, TRANSyT Transport Research Centre, Universidad Politecnica de Madrid \email{fernando.romero@@mcmaster.ca}
#' @references \url{https://github.com/Fernan-tech}
NULL

#' Travel survey and stated preferences.
#'
#' A dataset containing information about a travel survey data carried out in September-October 2018
#' in two municipalities of the A3 Eastern Corridor Madrid: Rivas and Arganda.
#'
#' @format A data frame with 1186 rows and 72 variables:
#' \describe{
#'   \item{REGISTRO}{ID code. Unique for each answer}
#'   \item{municipio}{Municipality: Rivas or Arganda}
#'   \item{seccion_censal}{Census section corresponding to the 2018 zoning: 45 zones in Rivas and 26 zones in Arganda}
#'   \item{frec_madrid}{Trip frequency to municipality of Madrid. 3 categories: More than 3 days a week; 1-3 days a week; once or twice a month}
#'   \item{genero}{Gender: male or female}
#'   \item{edad}{Age. Continuous variable}
#'   \item{edad_cat}{Age. 6 categories: < 16; 16-26; 27-34; 35-49; 50-64; > 64}
#'   \item{sit_laboral}{Employment situation. 9 categories}
#'   \item{ingreso}{Level of income in €. 6 categories including Don´t know-Don´t answer category}
#'   \item{estudios}{Level of studies. 4 categories}
#'   \item{carnet}{Driving license availability. 5 categories}
#'   \item{vehiculo}{Car availability. 5 categories}
#'   \item{abono}{Public transport pass availability: yes or no}
#'   \item{tipo_dia}{Day of the week of the last trip to Madrid municipality. 7 categories. Monday Tuesday Wednesday Thursday Friday Saturday Sunday}
#'   \item{tipo_dia2}{Day of the week of the last trip to Madrid municipality. 3 categories. Weekday Saturday Sunday. Created from tipo_dia}
#'   \item{P12}{Departure time of the last trip to Madrid municipality. Hour:minute}
#'   \item{hora_franja}{Departure time of the last trip to Madrid municipality. 6 categories: peak morning,non peak morning,afternoon,peak evening,non peak evening, night. Created from P12}
#'   \item{tiempo_viaje}{Stated travel time of the last trip to Madrid municipality in minutes}
#'   \item{motivo_viaje}{Purpose of the last trip to Madrid municipality. 8 categories}
#'   \item{motivo_viaje_2}{Purpose of the last trip to Madrid municipality. 2 categories: Work_Studies, Others. Created from motivo_viaje}
#'   \item{modo}{Mode of transport of the last trip to Madrid municipality. 7 categories}
#'   \item{modo_bis}{Mode of transport of the last trip to Madrid municipality. 8 categories. Combines modo and ruta. Created from modo and ruta}
#'   \item{ruta}{If mode of transport is car, chosen route of the last trip to Madrid municipality: A3 highway or R3 highway. 2 categories}
#'   \item{P15_B}{If mode of transport is car, as a driver or as a passenger. 2 categories}
#'   \item{combinar}{To arrive at yout final destination, did you combine that mode of transportaton with any others? (the last trip to Madrid municipality)}
#'   \item{solo}{Did you make the trip alone or with a companion under the age of 16. 3 categories}
#'   \item{frec_viaje}{Trip frequency of the last trip to Madrid municipality}
#'   \item{aspectos}{In general, which of the following aspects can be the main one that determines a change in your usual trip to municipality of Madrid, in terms of departure time, mode of transport and route. 4 categories}
#'   \item{current_toll}{Only Arganda dwellers. Awareness of the R3 toll highway rate: Yes/No}
#'   \item{current_toll_tarifa}{Only Arganda dwellers. Awareness of the R3 toll highway rate. In €}
#'   \item{current_toll_diff}{Only Arganda dwellers. Difference between the stated R3 toll highway rate and the actual R3 toll highway rate. In €. Created from current_toll_tarifa}
#'   \item{conocimiento}{Only Arganda dwellers. Difference between the stated R3 toll highway rate and the actual R3 toll highway rate. 4 categories. Created from current_toll_tarifa}
#'   \item{wtp}{Only Arganda dwellers. Willingness to use R3 toll highway for a journey similar to the stated one: SI, NO, NO_DESTINO}
#'   \item{wtp_tarifa}{Only Arganda dwellers. Willingness to use R3 toll highway for a journey similar to the stated one. In €}
#'   \item{abono_mensual}{Only Arganda dwellers. Would you purchase a flat monthly fee, that would you allow to use the R3 as many times as you like: SI, NO}
#'   \item{abono_mensual_tarifa}{Only Arganda dwellers. Willingness to pay a flat monthly fee, that would you allow to use the R3 as many times as you like. In €}
#'   \item{carpooling}{Only Arganda dwellers. Willingness to share the vehicle with an unknown third person if that allows the driver to enjoy a discount to use the R3 toll highway}
#'   \item{carpooling_descuento}{Only Arganda dwellers. On a trip with similar characteristics to the one you made, from which toll discount would you choose the R3. In €}
#'   \item{elegiria_bus_arganda}{Only Arganda dwellers. Willingness to use the Express Bus Line with a travel time of 20 min for a journey similar to the stated one}
#'   \item{elegiria_bus_rivas}{Only Rivas dwellers. Willingness to use the Express Bus Line with a travel time of 15 min for a journey similar to the stated one}
#'   \item{elegiria_bus}{Willingness to use the Express Bus Line for a journey similar to the stated one. Created combining elegiria_bus_arganda and elegiria_bus_rivas}
#'   \item{elegiria_metro_arganda}{Only Arganda dwellers. Willingness to use Metro if the transfer in Puerta Arganda station was removed for a journey similar to the stated one}
#'   \item{elegiria_metro_rivas}{Only Rivas dwellers. Willingness to use Metro if the transfer in Puerta Arganda station was removed for a journey similar to the stated one}
#'   \item{elegiria_metro}{Willingness to use Metro if the transfer in Puerta Arganda station was removed for a journey similar to the stated one. Created combining elegiria_metro_arganda and elegiria_metro_rivas}
#'   \item{cluster_A_1}{Cluster of the 26 census section of Arganda considering average household income. 2 categories}
#'   \item{cluster_A_2}{Cluster of the 26 census section of Arganda considering average household income. 3 categories}
#'   \item{cluster_A_4}{Cluster of the 26 census section of Arganda considering average age, percentage of women, and average household income. 2 categories}
#'   \item{cluster_A_5}{Cluster of the 26 census section of Arganda considering average age, percentage of women, and average household income. 3 categories}
#'   \item{cluster_A_7}{Cluster of the 26 census section of Arganda considering average age, percentage of women, average household income, percentage of votes to right-wing parties. 2 categories}
#'   \item{cluster_A_8}{Cluster of the 26 census section of Arganda considering average age, percentage of women, average household income, percentage of votes to right-wing parties. 3 categories}
#'   \item{cluster_A_10}{Cluster of the 26 census section of Arganda considering average age, average household income, percentage of votes to right-wing parties. 2 categories}
#'   \item{cluster_A_11}{Cluster of the 26 census section of Arganda considering average age, average household income, percentage of votes to right-wing parties. 3 categories}
#'   \item{Arg_Cluster_Income}{Average household income of each of the 26 census section of Arganda}
#'   \item{Arg_Cluster_Women}{Average age of each of the 26 census section of Arganda}
#'   \item{Arg_Cluster_Age}{Percentage of women of each of the 26 census section of Arganda}
#'   \item{Arg_Cluster_Right_Wing}{Percentage of votes to right-wing parties of each of the 26 census section of Arganda}
#'   \item{cluster_RA_1}{Cluster of all census sections considering average household income. 2 categories}
#'   \item{cluster_RA_2}{Cluster of all census sections considering average household income. 3 categories}
#'   \item{cluster_RA_3}{Cluster of all census sections considering average household income. 4 categories}
#'   \item{cluster_RA_4}{Cluster of all census sections considering average age, percentage of women, and average household income. 2 categories}
#'   \item{cluster_RA_5}{Cluster of all census sections considering average age, percentage of women, and average household income. 3 categories}
#'   \item{cluster_RA_6}{Cluster of all census sections considering average age, percentage of women, and average household income. 4 categories}
#'   \item{cluster_RA_7}{Cluster of all census sections considering average age, percentage of women, average household income, percentage of votes to right-wing parties. 2 categories}
#'   \item{cluster_RA_8}{Cluster of all census sections considering average age, percentage of women, average household income, percentage of votes to right-wing parties. 3 categories}
#'   \item{cluster_RA_9}{Cluster of all census sections considering average age, percentage of women, average household income, percentage of votes to right-wing parties. 4 categories}
#'   \item{cluster_RA_10}{Cluster of all census sections considering average age, average household income, percentage of votes to right-wing parties. 2 categories}
#'   \item{cluster_RA_11}{Cluster of all census sections considering average age, average household income, percentage of votes to right-wing parties. 3 categories}
#'   \item{cluster_RA_12}{Cluster of all census sections considering average age, average household income, percentage of votes to right-wing parties. 4 categories}
#'   \item{Arg_Cluster_Income}{Average household income of all census sections}
#'   \item{Arg_Cluster_Women}{Average age of each of allcensus sections}
#'   \item{Arg_Cluster_Age}{Percentage of women of each of all census sections}
#'   \item{Arg_Cluster_Right_Wing}{Percentage of votes to right-wing parties of each of all census sections}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name dataSurveyA3
#' @usage data(dataSurveyA3)
#' @examples
#'  data(dataSurveyA3)
#'  genero <- dataSurveyA3$genero
"dataSurveyA3"
