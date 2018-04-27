*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

$setglobal c09_pop_scenario  SSP2
*   options:   SSP: "SSP1", "SSP2", "SP3", "SSP4", "SSP5"
*             SRES: "a1", "a2", "b1", "b2"

$setglobal c09_gdp_scenario  SSP2
*   options:   SSP: "SSP1", "SSP2", "SSP3", "SSP4", "SSP5"
*             SRES: "a1", "a2", "b1", "b2"


table f09_gdp_ppp_iso(t_all,iso,gdp_scen09) GDP PPP per capita per year (USD)
$ondelim
$include "./modules/09_drivers/input/f09_gdp_ppp_iso.csv"
$offdelim;

table f09_gdp_mer_iso(t_all,iso,gdp_scen09)  GDP MER per capita per year (USD)
$ondelim
$include "./modules/09_drivers/input/f09_gdp_mer_iso.csv"
$offdelim;

table f09_pop_iso(t_all,iso,pop_scen09) Population (mio.)
$ondelim
$include "./modules/09_drivers/input/f09_pop_iso.csv"
$offdelim;

table f09_development_state(t_all,i,gdp_scen09) State of development as function of GDP in low, middle and high income (1)
$ondelim
$include "./modules/09_drivers/input/f09_development_state.cs3"
$offdelim;

table f09_demography(t_all,iso,pop_scen09,sex,age_group) Population (mio.)
$ondelim
$include "./modules/09_drivers/input/f09_demography.cs3"
$offdelim;

table f09_physical_inactivity(t_all,iso,gdp_scen09,sex,age_group) Share of population which is physically inactive (1)
$ondelim
$include "./modules/09_drivers/input/f09_physical_inactivity.cs3"
$offdelim;
