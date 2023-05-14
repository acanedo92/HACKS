## MANTENIMIENTO DE ESPACIO DE TRABAJO
# https://comunidadbioinfo.github.io/cdsb2021_workflows/mantenimiento-del-espacio-de-trabajo-en-r.html 
# https://www.youtube.com/watch?v=CFX0-9C5s8M 

tmp = as.data.frame(installed.packages()) 
max_version = max(as.numeric(substr(tmp$Built, 1,1)))
tmp = tmp[as.numeric(substr(tmp$Built, 1,1)) < max_version,]
lapply(tmp$Package, remove.packages)
lapply(tmp$Package, function(x) install.packages(x, dependencies = TRUE))

.libPaths()


installed.packages()
old.packages()

BiocManager::valid()

BiocManager::install(c(
  "brew", "cachem", "callr", "cli", "commonmark", "cpp11", "crayon", "curl", "desc", "devtools",
  "digest", "evaluate", "fansi", "fastmap", "fs", "gert", "gh", "gitcreds", "highr", "httr",
  "jsonlite", "knitr", "lifecycle", "openssl", "pillar", "pkgbuild", "pkgload", "processx", "ps",
  "purrr", "rlang", "roxygen2", "rstudioapi", "rversions", "stringi", "stringr", "sys", "testthat",
  "tibble", "usethis", "utf8", "vctrs", "waldo", "whisker", "xfun", "xml2", "yaml", "zip"
), update = TRUE, ask = FALSE, force = TRUE)

BiocManager::install(packagename)
library(devtools)
packageVersion("devtools")
devtools::install_version("devtools", "2.0.0")


Sys.getenv("R_LIBS_USER") ##aquí viven los paquetes (crudos) de instalación

# ¿Cómo conservamos los paquetes instalados?

fs::dir_create("~/Library/R/4.2/library")  #Crea un directorio con el número de versión que instalarás, usando el comando:
fs::dir_create("/home/anahi/R/x86_64-pc-linux-gnu-library/4.4")

usethis::edit_r_environ()}

installed.packages() %% as_ti
library(tibble)
