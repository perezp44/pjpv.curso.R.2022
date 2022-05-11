#' @title Retorna un data.farme con los valores únicos de cada columna
#' @description En realidad pjp_unique_values() retorna a df con 3 columnas:
#' 1) el nombre de las variables, 2) El nº de valores únicos de cada columna, y 3) los valores únicos de las variables
#' @param df (a data frame)
#' @param truncate (default to FALSE)
#' @param nn  (if you truncate, this is the maximun character that you will see. The default = 100)
#' @return Un nuevo \code{df} con los valores unicos del df original
#' @importFrom magrittr `%>%`
#' @export
#' @examples
#' pjp_unique_values(iris)


pjp_unique_values <- function(df, truncate = FALSE, nn = 100) {
    bb <- data.frame(variables = names(df))
    cc <- df %>% purrr::map(unique) %>% purrr::map(length) %>% purrr::as_vector() %>%
                 tibble::enframe(name = NULL) %>% dplyr::rename(nn_unique = value)
    dd <- df %>% purrr::map(unique) %>% purrr::map(sort, na.last = FALSE) %>%
                 purrr::map(paste, collapse = " - ") %>% purrr::as_vector() %>%
                 tibble::enframe(name = NULL) %>% dplyr::rename(unique_values = value)
if (truncate == TRUE){
  dd <- dd %>% dplyr::mutate(unique_values = stringr::str_sub(unique_values, start = 1, end = nn) )
}
ee <- dplyr::bind_cols(bb, cc,dd)
return(ee)
}

