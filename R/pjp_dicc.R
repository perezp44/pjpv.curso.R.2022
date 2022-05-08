#' @title returns a df with el diccionario de un df
#' @description pjp_f_dicc() returns a df con el diccionario del input df
#' @param df (a data frame)
#' @param truncate (default to TRUE)
#' @param nn  (if you truncate, this is the maximun character that you will see. The default = 100)
#' @return Un nuevo \code{df} con los valores unicos del df original
#' @importFrom magrittr `%>%`
#' @export



pjp_dicc <- function(df, truncate = TRUE, nn = 100) {
    df_aa <- pjpv.curso.2022::pjp_estadisticos_basicos(df)
    df_bb <- pjpv.curso.2022::pjp_unique_values(df, truncate = truncate, nn = nn)
    dicc_df <- dplyr::bind_cols(df_aa, df_bb)
    dicc_df <- dicc_df %>% dplyr::select(variable, type, nn_unique, unique_values, q_na, p_na, p_zeros, min, max, mean, sd, NN, NN_ok)

}
