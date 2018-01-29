*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

positive variables
 vm_carbon_stock(j,land,c_pools)             carbon in vegetation soil and litter for different land types (Mio tC)
;

parameters
 pm_carbon_density_ac(t,j,ac,c_pools)  carbon density for ac and c_pools (tC per ha)
 pc52_carbon_stock(j,land,c_pools)     current carbon in vegetation soil and litter for different land types (Mio tC)
 pc52_carbon_density_start(t,j,c_pools)  carbon density for new land in other(tC per ha)
;

equations
 q52_co2c(j,emis_source_co2_land)             cellular aggregation of land pool emissions
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_carbon_stock(t,j,land,c_pools,type)   carbon in vegetation soil and litter for different land types (Mio tC)
 oq52_co2c(t,j,emis_source_co2_land,type) cellular aggregation of land pool emissions
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
