options("repos"="http://cran.rstudio.com") # set the cran mirror

packages <- c("devtools",
	      "roxygen2",
	      "testthat",
	      "tidyverse",
              "stringr",
              "rstudio",
              "knitr",
              "rmarkdown")

packages <- setdiff(packages, installed.packages()[, "Package"])

if (length(packages) != 0){
  (install.packages(packages))
}

# Install Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()

update.packages(ask=FALSE)
