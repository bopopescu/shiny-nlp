# This file is intended to install the dependencies of the project. 
# It installs a Python interpreter interpreter
# and some useful packages
# It will also install other R packages such as shiny, dplyr ...

dependencies <- c("shiny", "dplyr", "reticulate")

for (pkg in dependencies){
  if (!pkg %in% installed.packages()[, "Package"]){
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  } else {
    library(pkg, character.only = TRUE)
  }
}

# Tell R the location of the created envrionment

install_miniconda()
conda_create("/cloud/project/Python/shiny-nlp", packages = c("python=3.8"))

conda_install("/cloud/project/Python/shiny-nlp", packages = c("spacy", "nltk", "gensim"))

