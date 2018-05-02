*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*' @description  Agricultural water demand
*' Water demand for agriculture is endogenously calculated based on irrigated cropland
*' `vm_area(j,kcr,"irrigated")` and livestock production 
*'
*' Irrigation water demand per hectare for each crop category and cluster 
*' is provided by the LPJml model. This parameter refers to the water that
*' has to be applied to the field, i.e. it includes losses due to evaporation on the field but
*' does not include losses during the water transport from source to field.
*' Livestock water demand `ic42_wat_req_k(j,kli)` is determined from FAO sources.
*'
*' Irrigation efficiency
*' Switches for different scenarios for irrigation efficiency can be chosen.
*'    *A global static value is applied. It is the global weighted average of water losses from
*' source to field (conveyance efficiency times management factor) from @PIK_report104_2007.
*' Irrigated area from @siebert_FAO_2007 has been used as aggregation weight.
*' 
*'    *A regression between country values of conveyance efficiency times management factor from
*' @PIK_report104_2007 and GDP is performed. 
*'
*' ![Irrigation efficiency evolution with GDP for the SSP2 scenario.
*'  ](irrigation_efficiency.png){ width=60% }
*'
*' Non agricultural human water demand
*'
*' Water demand from all other sectors is treated exogenously. The scalar `s42_reserved_fraction`
*' in the input.gms determines how much water is reserved for non agricultural purposes.
*' Technically, it is assigned to industrial use, while demand for other non-agricultural
*' sectors is set to 0. The default value is 0.5 which is a vague guess.
*'
*' Environmental water demand
*'
*' Environmental water requirements can be specified separately using the switch
*' `s42_env_flow_scenario` in the input.gms. The following settings are available:
*'
*'   *No additional environmental flows are considered.
*'   *A certain fraction of available water `s42_env_flow_fraction` is reserved for
*' environmental purposes and consequently not available for agricultural activities
*' (in addition to `s42_reserved_fraction`).
*'   *Environmental flow requirements (EFR) are calculated from LPJ1 inputs according
*' to an algorithm by  @smakhtin_water_2004 on cluster level. Due to the
*' fact that MAgPIE only considers available blue water during the growing period of
*' the plants [43_water_availability], EFR are also only calculated during this growing 
*' period. These are reserved in addition to `s42_protected_fraction`.
*' In the case of the absence of an environmental flow protection policy, a base protection
*' can be specified: `s42_env_flow_base_fraction`. It defaults to 5 % of available water.
*'
*' Where and when a potential environmental flow protection policy takes effect is determined
*' in the file EFR_protection_policy.csv in the input folder of the water demand module.
*'
*'@limitations The module uses conveyance efficiency times management factor for irrigation efficiency.
*' Therefore, the management factor is double accounted because it is already considered in lpj airrig.
*' The module realization does not consider annual water balances but only water balances during the
*' growing period of crops. This period differs between cells.
*'

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/42_water_demand/agr_sector_aug13/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/42_water_demand/agr_sector_aug13/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/42_water_demand/agr_sector_aug13/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/42_water_demand/agr_sector_aug13/equations.gms"
$Ifi "%phase%" == "scaling" $include "./modules/42_water_demand/agr_sector_aug13/scaling.gms"
$Ifi "%phase%" == "preloop" $include "./modules/42_water_demand/agr_sector_aug13/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/42_water_demand/agr_sector_aug13/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/42_water_demand/agr_sector_aug13/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
