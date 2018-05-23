*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*' @title Drivers
*'
*' @description The Drivers module provide input drivers
*' which are used by several other modules in the model. This module 
*' aggregates mainly inputs related to population and gdp, but not limited 
*' to it. When a input is only required in one module or realization, 
*' the input driver is provided directly in the module that demands it 
*' instead of in the [09_drivers] module. 
*'
*' @authors Benjamin Leon Bodirsky

*###################### R SECTION START (MODULETYPES) ##########################
$Ifi "%drivers%" == "aug17" $include "./modules/09_drivers/aug17.gms"
*###################### R SECTION END (MODULETYPES) ############################
