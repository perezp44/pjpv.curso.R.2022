#' Población municipal del INE. (Spain)
#'
#' Población municipal (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2021.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#' Recuerda que los condominios se identifican porque su código (ine_muni) empieza por 53.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#' @source \url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
#'
#' @format A tibble with 194.720 rows and 13 variables
#' \itemize{
#'   \item ine_muni: Código INE del municipio (5 dígitos). Character
#'   \item ine_muni.n: Nombre del municipio (en 2020). Character
#'   \item year: año. Numeric
#'   \item poblacion: Población (Total, Hombres, Mujeres)
#'   \item values: Nº de personas. Numeric
#'   \item ine_muni.n.orig: Nombre del municipio (en el año corriente, year). Character
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item capital_prov: Identifica si el municipio es capital de provincia. Factor
#'   \item capital_ccaa: Identifica si el municipio es capital de CA. Factor
#'   }
#'
#'
"ine_pob_mun_1996_2021"


