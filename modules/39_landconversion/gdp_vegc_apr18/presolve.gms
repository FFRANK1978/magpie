*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

pc39_establish_costs(i,land) = p39_establish_costs(t,i,land);
pc39_landclear_costs(j,land) = p39_landclear_costs(t,j,land);

pc39_cost_landcon_past(j,land) = p39_cost_landcon_past(t,j,land);

display pc39_establish_costs;
display pc39_landclear_costs;

