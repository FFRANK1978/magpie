# |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
# |  authors, and contributors see AUTHORS file
# |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
# |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
# |  Contact: magpie@pik-potsdam.de


######################################
#### Script to start a MAgPIE run ####
######################################

library(lucode)
library(magclass)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")
cfg$results_folder <- "output/:title:"
cfg$gms$c_timesteps <- "coup2100"
cfg$gms$landconversion <- "gdp_vegc_may18"

cfg$recalibrate <- FALSE

# cfg$title <- "age_class_acx"
# start_run(cfg,codeCheck=FALSE)

cfg$title <- "age_class_ini4"
cfg$gms$natveg  <- "dynamic_jun18"
start_run(cfg,codeCheck=FALSE)
