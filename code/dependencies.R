library(tidyverse)
library(feather)

data_dir <- function() '/Volumes/Seagate Backup Plus Drive/churn_data/'
find_feather <- function(file_name){
  read_feather(paste0(data_dir(), file_name,'.feather'))
}
