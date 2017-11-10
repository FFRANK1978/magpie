*****Costs**********************************************************************
q32_cost_fore_ac(i2) .. vm_cost_fore(i2) =e=
                                   sum((cell(i2,j2),land32,fcosts32)$(not sameas(land32,"old")), v32_land(j2,land32)*f32_fac_req_ha(i2,fcosts32));

*****forestry emissions seen in maccs module****************************************
 q32_cdr_aff(j2,emis_source_co2_forestry) .. vm_cdr_aff(j2,emis_source_co2_forestry) =e=
                                        sum((ac,emis_co2_to_forestry(emis_source_co2_forestry,c_pools))$(ord(ac) > 1 AND (ord(ac)-1) <= sm_invest_horizon/5),
                                        v32_land(j2,"new") * (sum(ct, pm_carbon_density_ac(ct,j2,ac,c_pools)) - sum(ct, pm_carbon_density_ac(ct,j2,ac-1,c_pools))));

*****Land***************************************************
 q32_land(j2) .. vm_land(j2,"forestry") =e=
                       sum(land32, v32_land(j2,land32));

 q32_aff_pol(j2) .. v32_land(j2,"new_indc") =e= sum(ct, p32_aff_pol_timestep(ct,j2));

 q32_max_aff .. sum((j2), vm_land(j2,"forestry")-pm_land_start(j2,"forestry")) =l=
                                        s32_max_aff_area;

*****Carbon stocks**************************************************************
 q32_carbon(j2,c_pools)  .. vm_carbon_stock(j2,"forestry",c_pools) =e=
                        sum(land32, v32_land(j2,land32)*sum(ct, p32_carbon_density(ct,j2,land32,c_pools)));


 q32_diff .. vm_landdiff_forestry =e= sum((j2),v32_land(j2,"new") + v32_land(j2,"new_indc")
                                          + pcm_land(j2,"forestry")
                                          - v32_land(j2,"prot")
                                          - v32_land(j2,"grow")
                                          - v32_land(j2,"old"));
*** EOF equations.gms ***
