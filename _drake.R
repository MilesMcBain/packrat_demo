source('packages.R')

lapply(list.files("./R", full.names = TRUE), source)

drake_config(tt_plan)
