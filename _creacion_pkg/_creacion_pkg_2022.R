usethis::create_package("pjpv.curso.R.2022") #- En la Consola

usethis::use_news_md()

usethis::use_description(fields = list(Title = "Paquete de apoyo a mis cursos",
                                       `Authors@R` = 'person("Pedro J.", "Perez",
                                       email = "pedro.j.perez@uv.es",
                                       role = c("aut", "cre"))',
                                       Description = "El package pjpv.curso.R.2022 sirve de apoyo a mis cursos. Me sirve para cargar algunas funciones y conjuntos de datos.", LazyData = "true", LazyDataCompression =  "xz"))

usethis::use_mit_license()

usethis::use_roxygen_md()  #- sets up roxygen2 and enables markdown mode so you can use markdown in your roxygen2 comment blocks.

usethis::use_package_doc() #- creates a skeleton documentation file for the complete package, taking the advantage of the latest roxygen2 features to minimise duplication between the DESCRIPTION and the documentation (crea el archivo ./R/<nombre-del-pkg>-package.R con



objects_not_build <- c("./_currando", "./_cracion_pkg")
usethis::use_build_ignore(objects_not_build)
usethis::use_git_ignore(objects_not_build)


usethis::use_data_raw()  #- crea un directorio "data-raw", y dentro crea un fichero DATASET.R. Ese fichero solo tiene la instrucción usethis::use_data("DATASET") para una vez creado DATASET, pues documentarlo etc....
#- una vez has creado la carpeta /data-raw/ , alli está un fichero que me crea los df que quiero exportar en la carpeta /data/

#- dependencias (incorporas) -----------------------------------------------------
usethis::use_pipe()         #---- JEY!!!!
usethis::use_package("generics")
usethis::use_package("dplyr")
usethis::use_package("stringr")
usethis:: use_import_from("utils", "browseURL")
usethis:: use_import_from("ggplot2", "theme_minimal")
usethis:: use_import_from("ggplot2", "theme")

usethis::use_tibble()  #- If you want to avoid ugly data.frame printing for tibbles in your package

devtools::document()  #- para que genere la documentación de las funciones



#- añadir un dataset -----------------------------------------------------------
#- Cuando quieras añadir un nuevo conjunto de datos al pkg
#- PARA AÑADIR un nuevo df u objeto:
#- 1) Cargas el objeto en memoria de R con un archivo de ./data-raw/
#- 2) Para q vaya a memoria del pkg has de: devtools::use_data(CNIG_CCAA_sf, overwrite = TRUE) #
#- 3) Añadir la documentacion creando un fichero roxygen en ./R/mis_datos.R
#- 4) Finalmente has de actualizar la documentacion con: devtools::document()
#- 5) Llevarlo a Github

usethis::use_data(ine_censos_historicos_capitales, overwrite = TRUE) #- esto crea los datos en
devtools::document()  #- para que genere la documentación de las funciones
#- Solo queda hacer el BUILD con “Install & Restart” y ya está construido e instalado

#- por ejemplo:
ine_pob_mun_1996_2021 <- pjpv.datos.2022::ine_pob_mun_1996_2021
usethis::use_data(ine_pob_mun_1996_2021, overwrite = TRUE, compress = "xz") #-

devtools::document()

#- añadir una función ----------------------------------------------------------
#- Cuando quieras añadir una nueva f. al pkg --------------------------
#- 1) Añadir el fichero con la definicion de la f en : ./R/my_funcion.R
#- 3) En ese fichero ya pones la documentacion y si lo exportas con @export
#- 4) Finalmente has de actualizar la documentacion con: devtools::document()
#- 5) Llevarlo a Github

#- creas el fichero de la funcion en la carpeta /R/
devtools::document()

usethis::use_r("pjp_open_urls") #- para crear o modificar el fichero de la funcion



#- GIT (activando) -------------------------------------------------------------
usethis::use_git()  #- activa GIT. Le h dicho que SÍ. Se reinicia RStudio para q aparezca git pane


#- GITHUB ----------------------------------------------------------------------
#-  Una vez RStudio se haya reiniciado, ejecutas en la CONSOLA: usethis::use_github()  . Te preguntará que qué git protocol quieres usar. Selecciona https. Te preguntará si la Description está OK. Le dices que SI. Se creará el repo en Github y añadirá el remote origin y alguna cosa mas y lo dejará casi niquelado.
usethis::use_github() #- esta vez si ha funcionado


#- si el usethis::use_github() no funcionase, tendrías que hacerlo a mano:
#- 1) te vas a Github y creas un repo con el mimos nombre
#- haces 1) git add -A 2) git commit --all --message "adding origin to the local repo"
#- 3) git remote add origin https://github.com/perezp44/pjpv.datos.01.git
#- 4) git push -u origin master


#- Subiendo a Github -------------------------
credentials::set_github_pat()
git add -A
git commit --all --message "todo a Github"
git push -u origin master



#- Tuneando el repo de Github
usethis::use_readme_md()                           #- modifica a tu gusto la README.md
usethis::use_github_links() #- Populates the URL and BugReports fields of a GitHub-using R package with appropriate links.


#-  MAS COSAS ------------------------------

#- en la documentacion antigua tienes cosas como hacer la vignettes y tb hacer checks etc...


#- CHECK -------------------------------------------------
devtools::document()


devtools::check(cran = FALSE)     #- chequea
devtools::check()                 #- chequea

devtools::build()
