#' Población provincial del INE. (Spain)
#'
#' Población provincial (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#' @source \url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
#'
#' @format A tibble with 1.248 rows and 8 variables
#' \itemize{
#'   \item ine_prov: Código INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item year: año. Numeric
#'   \item poblacion: Población (Total, Hombres, Mujeres). Character
#'   \item values: Nº de personas. Numeric
#'   \item ine_ccaa: Codigo INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   }
#'
#' @examples
#' \dontrun{
#'  ine_pob_prov_1996_2021 <- ine_pob_prov_1996_2021
#' }
#'
"ine_pob_prov_1996_2021"


