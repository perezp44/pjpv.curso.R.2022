% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pjp_df_decimales.R
\name{pjp_df_decimales}
\alias{pjp_df_decimales}
\title{Redondea un df dejando los decimales q le digas}
\usage{
pjp_df_decimales(df, nn = 2)
}
\arguments{
\item{df}{Un dataframe}

\item{nn}{el nº de decimales (Default = 2)}
}
\value{
Un nuevo \code{df} con sus valores redondeados a \code{nn} dígitos
}
\description{
Redondea los valores numéricos de un df;
es decir, retorna el mismo df pero con los valores redondeados
a los decimales que le digas (default = 2).
Por ejemplo, pjp_f_decimales(cars, nn = 2)
}
\examples{
pjp_df_decimales(iris, nn = 1)
}
