#' @title Abre un grupo de links en el browser
#' @description Proporcionas un vector con url's y las abre en el navegador
#'
#' @param urls vector con url's a  abrir
#' @examples
#' pjp_open_urls("https://perezp44.github.io/intro-ds-21-22-web/")
#' @export

pjp_open_urls <- function(urls = "https://www.google.com") {

  # Path
  browser = getOption("browser")

  # Open urls
  if(length(urls) > 1) {
    lapply(urls,function(x) browseURL(as.character(x), browser = browser))
  } else {
    browseURL(urls, browser = browser)
  }

  NULL

  }

