library(tidyverse)
library(feather)

sample_submission <- read_csv('/Volumes/Seagate Backup Plus Drive/source/sample_submission_zero.csv')

train <- read_csv('/Volumes/Seagate Backup Plus Drive/source/train.csv')

members <- read_csv("/Volumes/Seagate Backup Plus Drive/source/members.csv")

transactions <- read_csv("/Volumes/Seagate Backup Plus Drive/source/transactions.csv")

seagate_dir <- "/Volumes/Seagate Backup Plus Drive/source/"


datasets <- list(sample_submission = sample_submission,
                 train = train,
                 members = members,
                 transactions = transactions)

walk2(names(datasets), datasets, ~ write_feather(.y, paste0(seagate_dir, .x, '.feather')))
