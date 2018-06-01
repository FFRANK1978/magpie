*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

variables
 v52_carbon_stock_net_change(j,land,c_pools)  net change in carbon stocks compared to previous time step (Mio tC)
;

positive variables
 vm_carbon_stock(j,land,c_pools)        		carbon stock in vegetation soil and litter for different land types (Mio tC)
 v52_carbon_stock_expansion(j,land,c_pools)    carbon stock expansion compared to previous time step (Mio tC)
 v52_carbon_stock_reduction(j,land,c_pools)    carbon stock reduction compared to previous time step (Mio tC)
;

parameters
 pm_carbon_density_ac(t,j,ac,c_pools)  carbon density for ac and c_pools (tC per ha)
 pc52_carbon_stock(j,land,c_pools)     current carbon in vegetation soil and litter for different land types (Mio tC)
 pc52_carbon_density_start(t,j,c_pools)  carbon density for new land in other(tC per ha)
;

equations
 q52_carbon_stock_expansion(j,land,c_pools) calculation carbon stock expansion
 q52_carbon_stock_reduction(j,land,c_pools) calculation carbon stock reduction
 q52_carbon_stock_net_change(j,land,c_pools) calculation net carbon stock change
 q52_co2c_emis(j,emis_co2)             		 calculation of annual CO2 emissions
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov52_carbon_stock_net_change(t,j,land,c_pools,type) net change in carbon stocks compared to previous time step (Mio tC)
 ov_carbon_stock(t,j,land,c_pools,type)              carbon stock in vegetation soil and litter for different land types (Mio tC)
 ov52_carbon_stock_expansion(t,j,land,c_pools,type) carbon stock expansion compared to previous time step (Mio tC)
 ov52_carbon_stock_reduction(t,j,land,c_pools,type) carbon stock reduction compared to previous time step (Mio tC)
 oq52_carbon_stock_expansion(t,j,land,c_pools,type) calculation carbon stock expansion
 oq52_carbon_stock_reduction(t,j,land,c_pools,type) calculation carbon stock reduction
 oq52_carbon_stock_net_change(t,j,land,c_pools,type) calculation net carbon stock change
 oq52_co2c_emis(t,j,emis_co2,type)                   calculation of annual CO2 emissions
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
