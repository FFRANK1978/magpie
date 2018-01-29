*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de
parameters

* Population
  im_pop_iso(t,iso)      population in mio capita
  im_pop(t,i)      population in mio capita

* GDP in MER
  i09_gdp_mer_iso(t,iso)          income in mio US Dollar 05 MER before a price shock
  i09_gdp_mer(t,i)      income in mio US Dollar 05 MER before a price shock

  im_gdp_pc_mer(t,i)              GDP per capita (USD05) in market exchange rate
  i09_gdp_pc_mer_iso(t,iso)                    income per capita in US Dollar 05 MER per capita before a price shock

* GDP in PPP


  i09_gdp_ppp_iso(t,iso)      income in mio US Dollar 05 PPP before a price shock
  i09_gdp_ppp(t,i)      income in mio US Dollar 05 PPP before a price shock

  im_gdp_pc_ppp(t,i)              GDP per capita (USD05) in purchase power parity
  im_gdp_pc_ppp_iso(t,iso)                    income per capita in US Dollar 05 PPP per capita before a price shock

* Development State
  im_development_state(t,i)  development state (share in high income level)
  im_physical_inactivity(t,iso,sex,age_group)  Share of population which is physically inactive (people per people)
  im_demography(t,iso,sex,age_group) Population by groups (mio people)
;