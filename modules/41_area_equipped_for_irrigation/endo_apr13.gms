*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de


*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "declarations" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/41_area_equipped_for_irrigation/endo_apr13/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
