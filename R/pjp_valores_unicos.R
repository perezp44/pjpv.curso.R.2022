#' @title returns a df with the unique values in each colum of athe input df
#' @description my_df_valores_unicos() te retorna un df con los valores(unicos) que existen en cada columna de un df
#' @param df (a data frame)
#' @param nn  (cuantos valores unicos permites como maximo, default=50)
#' @export
#' @examples
#' pjp_valores_unicos(cars)

pjp_valores_unicos <- function(df, nn = 100) {
cc <- data.frame(x = 1:nn)
  for(ii in 1:length(df)){
    aa <- as.vector(unique(df[[ii]]))
    aa <- aa[!is.na(aa)]
    aa <- aa[1:nn]
    cc <- as.data.frame(cbind(cc, aa))
}
cc[,1] <- NULL
names(cc) <-  names(df)
return(cc)
}

