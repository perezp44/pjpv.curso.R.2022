#' @title Redondea un df dejando los decimales q le digas
#' @description Redondea los valores numéricos de un df;
#' es decir, retorna el mismo df pero con los valores redondeados
#' a los decimales que le digas (default = 2).
#' Por ejemplo, pjp_f_decimales(cars, nn = 2)
#'
#' @param df Un dataframe
#' @param nn el nº de decimales (Default = 2)
#' @return Un nuevo \code{df} con sus valores redondeados a \code{nn} dígitos
#' @examples
#' pjp_df_decimales(iris, nn = 1)
#' @export


pjp_df_decimales <- function(df, nn = 2) {
  is.num <- sapply(df, is.numeric)
  df[is.num] <- lapply(df[is.num], round, nn)
  df
}
