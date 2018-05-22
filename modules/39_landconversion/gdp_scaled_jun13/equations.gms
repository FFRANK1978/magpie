*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

q39_cost_landcon_annuity(j2,land) ..
                                                         v39_cost_landcon_annuity(j2,land)
                          =g=
 (vm_land(j2,land) - pcm_land(j2,land))*sum(cell(i2,j2),pc39_lndcon_costs(i2,land))*sum(cell(i2,j2),pm_interest(i2)/(1+pm_interest(i2)));

 q39_cost_landcon(j2,land) .. vm_cost_landcon(j2,land)
                          =e=
 v39_cost_landcon_annuity(j2,land) + pc39_cost_landcon_past(j2,land);
