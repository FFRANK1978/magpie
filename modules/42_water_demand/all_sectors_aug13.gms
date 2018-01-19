*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de


*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/42_water_demand/all_sectors_aug13/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/42_water_demand/all_sectors_aug13/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/42_water_demand/all_sectors_aug13/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/42_water_demand/all_sectors_aug13/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/42_water_demand/all_sectors_aug13/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/42_water_demand/all_sectors_aug13/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/42_water_demand/all_sectors_aug13/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/42_water_demand/all_sectors_aug13/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
