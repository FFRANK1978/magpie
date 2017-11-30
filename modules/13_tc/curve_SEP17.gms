*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3 
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/13_tc/curve_SEP17/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/13_tc/curve_SEP17/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/13_tc/curve_SEP17/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/13_tc/curve_SEP17/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/13_tc/curve_SEP17/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/13_tc/curve_SEP17/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/13_tc/curve_SEP17/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/13_tc/curve_SEP17/postsolve.gms"
$Ifi "%phase%" == "nl_fix" $include "./modules/13_tc/curve_SEP17/nl_fix.gms"
$Ifi "%phase%" == "nl_release" $include "./modules/13_tc/curve_SEP17/nl_release.gms"
$Ifi "%phase%" == "nl_relax" $include "./modules/13_tc/curve_SEP17/nl_relax.gms"
*######################## R SECTION END (PHASES) ###############################
