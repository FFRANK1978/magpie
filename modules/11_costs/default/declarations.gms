*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

variables
 vm_cost_glo                     total costs of production (mio. USD)
 v11_cost_reg(i)                 regional costs (mio. USD)
;

equations
 q11_cost_glo                    objective function
 q11_cost_reg(i)                 regional cost constraint
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_glo(t,type)     total costs of production (mio. USD)
 ov11_cost_reg(t,i,type) regional costs (mio. USD)
 oq11_cost_glo(t,type)   objective function
 oq11_cost_reg(t,i,type) regional cost constraint
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
