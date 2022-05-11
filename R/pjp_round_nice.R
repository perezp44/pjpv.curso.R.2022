#' @title Redondea un vector de núneros de forma "chachi"
#' @description Ya lo he dicho, round numbers nicely
#' See: https://twitter.com/hspter/status/314858331598626816
#' Thanks Karl Broman!!
#' @param ...  valores introducidos en pjp_round_nice()
#' @param digits  (digitos a mostrar, default = 2)
#' @examples
#'  pjp_round_nice(c(-0.0002, 0.0002, 0.5, -0.5, -0.002), digits = 3)
#' @export



pjp_round_nice <- function(..., digits = 2) {
  g <- sprintf(paste0("%.", digits, "f"), ...)
  z <- paste0("0.", paste(rep("0", digits), collapse=""))
  g[g==paste0("-", z)] <- z
  return(g)
}

