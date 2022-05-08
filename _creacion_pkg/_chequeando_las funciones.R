df <- pjpv.curso.2022::df_de_prueba
pjpv.curso.2022::pjp_df_decimales(df, nn = 1)
aa <- pjpv.curso.2022::pjp_dicc(df)
aa <- pjpv.curso.2022::pjp_estadisticos_basicos(df)
aa <- pjpv.curso.2022::pjp_round_nice(df[[1]])
aa <- pjpv.curso.2022::pjp_unique_values(df)
aa <- pjpv.curso.2022::pjp_valores_unicos(df)
pjpv.curso.2022::theme_pjp_maps
library(pjpv.curso.2022)
janitor::clean_names()

pjp_not_in(c(1,2,3), c(2,3))
pjp_estadisticos_basicos(iris)
pjp_round_nice(c(-0.0002, 0.0002, 0.5, -0.5, -0.002), digits = 3)

df <- pjp_unique_values(iris)
