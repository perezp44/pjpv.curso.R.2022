#' Población municipal de los Censos históricos del INE. (Spain)
#'
#' Población municipal (SPAIN). Sacados del INE. Periodo: 1842 y 2011. Capitales de provincia
#'
#' @source \url{ https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736176998&menu=resultados&idp=1254735572981}
#'
#' @format A tibble with 936 rows and 14 variables
#' \itemize{
#'   \item ine_muni: Código INE del municipio (5 dígitos). Character
#'   \item ine_muni.n: Nombre del municipio (en 2020). Character
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item year: año. Numeric. 1842, 1857, 1860, 1877 .... 2011
#'   \item pob_de_hecho: Numeric.
#'   \item pob_de_derecho: Numeric.
#'   \item hogares: Numeric.
#'   \item codigo_INE: Es como ine_muni pero sacado de la tabla del INE
#'   \item codigo_INE: Es como ine_muni.n pero sacado de la tabla del INE
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item capital_prov: Identifica si el municipio es capital de provincia. Factor
#'   \item capital_ccaa: Identifica si el municipio es capital de CA. Factor
#'   }
#'
#' @examples
#'  ine_censos_historicos_capitales <- ine_censos_historicos_capitales
#'
"ine_censos_historicos_capitales"


