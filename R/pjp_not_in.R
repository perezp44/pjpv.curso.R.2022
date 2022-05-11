#' @title Mi versión de not_in
#' @description Te dice los valores de x que no están en y
#'
#' @param x a vector
#' @param y a vector
#' @return Un nuevo vector con los elementos de x que no están en y
#' @examples
#' pjp_not_in(c(1,2,3), c(2,3))
#' @export


pjp_not_in <- function(x,y) {
    #- otra version. '%!in%' <- function(x,y)!('%in%'(x,y))  #- esta f. es not_in
      # aa <- !('%in%'(x,y))  #- esta f. es not_in
      # xx <- x[aa]
      x[!(x %in% y)]
}


