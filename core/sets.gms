*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*************************BASIC SETS (INDICES)***********************************

*###############################################################################
*######################## R SECTION START (SETS) ###############################
*THIS CODE IS CREATED AUTOMATICALLY, DO NOT MODIFY THESE LINES DIRECTLY
*ANY DIRECT MODIFICATION WILL BE LOST AFTER NEXT INPUT DOWNLOAD
*CHANGES CAN BE DONE USING THE INPUT DOWNLOADER UNDER SCRIPTS/DOWNLOAD
*THERE YOU CAN ALSO FIND ADDITIONAL INFORMATION

sets

   i all economic regions /SSA,MEA,OAS,CHA,IND,REF,NEU,EUR,LAM,USA,CAZ/

   iso list of iso countries /
       ABW,AFG,AGO,AIA,ALA,ALB,AND,ARE,ARG,ARM,
       ASM,ATA,ATF,ATG,AUS,AUT,AZE,BDI,BEL,BEN,
       BES,BFA,BGD,BGR,BHR,BHS,BIH,BLM,BLR,BLZ,
       BMU,BOL,BRA,BRB,BRN,BTN,BVT,BWA,CAF,CAN,
       CCK,CHN,CHE,CHL,CIV,CMR,COD,COG,COK,COL,
       COM,CPV,CRI,CUB,CUW,CXR,CYM,CYP,CZE,DEU,
       DJI,DMA,DNK,DOM,DZA,ECU,EGY,ERI,ESH,ESP,
       EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,
       GEO,GGY,GHA,GIB,GIN,GLP,GMB,GNB,GNQ,GRC,
       GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,HRV,
       HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,
       ISR,ITA,JAM,JEY,JOR,JPN,KAZ,KEN,KGZ,KHM,
       KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,
       LKA,LSO,LTU,LUX,LVA,MAC,MAF,MAR,MCO,MDA,
       MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,MNE,MNG,
       MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,
       NCL,NER,NFK,NGA,NIC,NIU,NLD,NOR,NPL,NRU,
       NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
       PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,
       RWA,SAU,SDN,SEN,SGP,SGS,SHN,SJM,SLB,SLE,
       SLV,SMR,SOM,SPM,SRB,SSD,STP,SUR,SVK,SVN,
       SWE,SWZ,SXM,SYC,SYR,TCA,TCD,TGO,THA,TJK,
       TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
       UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,
       VIR,VNM,VUT,WLF,WSM,YEM,ZAF,ZMB,ZWE /

   j number of LPJ cells /
       SSA_1*SSA_10,
       MEA_11*MEA_25,
       OAS_26*OAS_47,
       CHA_48*CHA_66,
       IND_67*IND_74,
       REF_75*REF_79,
       NEU_80*NEU_87,
       EUR_88*EUR_102,
       LAM_103*LAM_159,
       USA_160*USA_170,
       CAZ_171*CAZ_200/

   cell(i,j) number of LPJ cells per region i
      /
       SSA . SSA_1*SSA_10
       MEA . MEA_11*MEA_25
       OAS . OAS_26*OAS_47
       CHA . CHA_48*CHA_66
       IND . IND_67*IND_74
       REF . REF_75*REF_79
       NEU . NEU_80*NEU_87
       EUR . EUR_88*EUR_102
       LAM . LAM_103*LAM_159
       USA . USA_160*USA_170
       CAZ . CAZ_171*CAZ_200
      /

   i_to_iso(i,iso) mapping regions to iso countries
      /
       CAZ . (AUS,CAN,HMD,NZL,SPM)
       CHA . (CHN,HKG,MAC,TWN)
       EUR . (ALA,AUT,BEL,BGR,CYP,CZE,DEU,DNK,ESP,EST)
       EUR . (FIN,FRA,FRO,GBR,GGY,GIB,GRC,HRV,HUN,IMN)
       EUR . (IRL,ITA,JEY,LTU,LUX,LVA,MLT,NLD,POL,PRT)
       EUR . (ROU,SVK,SVN,SWE)
       IND . (IND)
       LAM . (ABW,AIA,ARG,ATA,ATG,BES,BHS,BLM,BLZ,BMU)
       LAM . (BOL,BRA,BRB,BVT,CHL,COL,CRI,CUB,CUW,CYM)
       LAM . (DMA,DOM,ECU,FLK,GLP,GRD,GTM,GUF,GUY,HND)
       LAM . (HTI,JAM,KNA,LCA,MAF,MEX,MSR,MTQ,NIC,PAN)
       LAM . (PER,PRI,PRY,SGS,SLV,SUR,SXM,TCA,TTO,URY)
       LAM . (VCT,VEN,VGB,VIR)
       MEA . (ARE,BHR,DZA,EGY,ESH,IRN,IRQ,ISR,JOR,KWT)
       MEA . (LBN,LBY,MAR,OMN,PSE,QAT,SAU,SDN,SYR,TUN)
       MEA . (YEM)
       NEU . (ALB,AND,BIH,CHE,GRL,ISL,LIE,MCO,MKD,MNE)
       NEU . (NOR,SJM,SMR,SRB,TUR,VAT)
       OAS . (AFG,ASM,ATF,BGD,BRN,BTN,CCK,COK,CXR,FJI)
       OAS . (FSM,GUM,IDN,IOT,JPN,KHM,KIR,KOR,LAO,LKA)
       OAS . (MDV,MHL,MMR,MNG,MNP,MYS,NCL,NFK,NIU,NPL)
       OAS . (NRU,PAK,PCN,PHL,PLW,PNG,PRK,PYF,SGP,SLB)
       OAS . (THA,TKL,TLS,TON,TUV,UMI,VNM,VUT,WLF,WSM)
       REF . (ARM,AZE,BLR,GEO,KAZ,KGZ,MDA,RUS,TJK,TKM)
       REF . (UKR,UZB)
       SSA . (AGO,BDI,BEN,BFA,BWA,CAF,CIV,CMR,COD,COG)
       SSA . (COM,CPV,DJI,ERI,ETH,GAB,GHA,GIN,GMB,GNB)
       SSA . (GNQ,KEN,LBR,LSO,MDG,MLI,MOZ,MRT,MUS,MWI)
       SSA . (MYT,NAM,NER,NGA,REU,RWA,SEN,SHN,SLE,SOM)
       SSA . (SSD,STP,SWZ,SYC,TCD,TGO,TZA,UGA,ZAF,ZMB)
       SSA . (ZWE)
       USA . (USA)
      /
;
*######################### R SECTION END (SETS) ################################
*###############################################################################

sets
        i2(i) "all economic regions (dynamic set)"
        j2(j) "number of LPJ cells (dynamic set)"
;
i2(i) = yes;
j2(j) = yes;


***TIME STEPS***
* ATTENTION: check macros m_year and m_yeardiff if you change something
*            here as they need to make some assumption about these settings,
*            especially having 1965 as start year, having t2 as alias of t and
*            having ct as current time step
sets time_annual annual extended vector
    / y1965*y2150 /

    t_all 5-year time periods
    / y1965, y1970, y1975, y1980, y1985, y1990,
      y1995, y2000, y2005, y2010, y2015, y2020, y2025, y2030, y2035, y2040,
      y2045, y2050, y2055, y2060, y2065, y2070, y2075, y2080, y2085, y2090,
      y2095, y2100, y2105, y2110, y2115, y2120, y2125, y2130, y2135, y2140,
      y2145, y2150 /

    t_past(t_all) timesteps with observed data
        / y1965, y1970, y1975,
         y1980, y1985, y1990,
         y1995, y2000, y2005, y2010
        /
;

set t(t_all) used time periods
$If "%c_timesteps%"== "less_TS" /y1995,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2070,y2080,y2090,y2100,y2110,y2130,y2150/;
$If "%c_timesteps%"== "coup2100" /y1995,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2070,y2080,y2090,y2100/;
$If "%c_timesteps%"== "test_TS" /y1995,y2005,y2010,y2020,y2030,y2040,y2050,y2070,y2090,y2110,y2130,y2150/;
$If "%c_timesteps%"== "recalc_npi_ndc" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030/;
$If "%c_timesteps%"== "TS_benni" /y1995,y2000,y2005,y2010,y2020,y2030,y2040,y2050/;
$If "%c_timesteps%"== "TS_WB" /y1995,y2000,y2005,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080/;
$If "%c_timesteps%"== "5year_fh" /y1995,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2065,y2070,y2075,y2080,y2085,y2090,y2095,y2100/;
$If "%c_timesteps%"== "5year" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2065,y2070,y2075,y2080,y2085,y2090,y2095,y2100/;
$If "%c_timesteps%"== "quicktest" /y1995,y2010,y2025/;
$If "%c_timesteps%"== "1" /y1995/;
$If "%c_timesteps%"== "2" /y1995,y2000/;
$If "%c_timesteps%"== "3" /y1995,y2000,y2010/;
$If "%c_timesteps%"== "4" /y1995,y2000,y2010,y2020/;
$If "%c_timesteps%"== "5" /y1995,y2000,y2010,y2020,y2030/;
$If "%c_timesteps%"== "6" /y1995,y2000,y2010,y2020,y2030,y2040/;
$If "%c_timesteps%"== "7" /y1995,y2000,y2010,y2020,y2030,y2040,y2050/;
$If "%c_timesteps%"== "8" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060/;
$If "%c_timesteps%"== "9" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070/;
$If "%c_timesteps%"=="10" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080/;
$If "%c_timesteps%"=="11" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090/;
$If "%c_timesteps%"=="12" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100/;
$If "%c_timesteps%"=="13" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110/;
$If "%c_timesteps%"=="14" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120/;
$If "%c_timesteps%"=="15" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130/;
$If "%c_timesteps%"=="16" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130,y2140/;
$If "%c_timesteps%"=="17" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130,y2140,y2150/;
$If "%c_timesteps%"=="past" /y1965,y1970,y1975,y1980,y1985,y1990,y1995,y2000,y2005,y2010/;
$If "%c_timesteps%"=="pastandfuture" /y1965,y1970,y1975,y1980,y1985,y1990,y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2070,y2080,y2090,y2100/;
set ct(t) current time period;

alias(t,t2);

sets

***Products***

   kall all products in the sectoral version
   /
   tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,oilpalm,puls_pro,
   potato,cassav_sp,sugr_cane,sugr_beet,others,cottn_pro,foddr, pasture, begr, betr,
   oils,oilcakes,sugar,molasses,alcohol,ethanol,distillers_grain,brans,scp,fibres,
   livst_rum, livst_pig,livst_chick, livst_egg, livst_milk, fish,
   res_cereals, res_fibrous, res_nonfibrous, wood, woodfuel
   /

  dev economic development status
       / lic, mic, hic /

***TYPE OF WATER SUPPLY***
   w water supply type / rainfed, irrigated /

***WATER SOURCES***
   wat_src water sources / surface, ground, technical, ren_ground /

***WATER DEAMND sectors***
   wat_dem water demands / agriculture, industry, electricity, domestic, ecosystem /

***LAND POOLS***
   land land pools
        / crop, past, forestry, primforest, secdforest, urban, other /

  land_ag(land) agricultural land
                  / crop, past /

   si suitability classes
        / si0, nsi0 /

***Forestry**
   ac age classes  / ac0,ac5,ac10,ac15,ac20,ac25,ac30,ac35,ac40,ac45,ac50,
                    ac55,ac60,ac65,ac70,ac75,ac80,ac85,ac90,ac95,ac100,
                    ac105,ac110,ac115,ac120,ac125,ac130,ac135,ac140,ac145,ac150,
                    ac155,ac160,ac165,ac170,ac175,ac180,ac185,ac190,ac195,ac200,
                    ac205,ac210,ac215,ac220,ac225,ac230,ac235,ac240,ac245,ac250,
                    ac255,ac260,ac265,ac270,ac275,ac280,ac285,ac290,ac295,acx /

   when temporal location relative to optimization / before, after /

   chap_par chapman-richards parameters / k,m /

*** Nutrients
   attributes product attributes
   /dm,ge,nr,p,k,wm,c/
* dry matter, gross energy, reactive nitrogen, phosphorus, potash, wet matters

   nutrients(attributes) product attributes
   /dm,ge,nr,p,k/

  dm_ge_nr(nutrients) attribtues relevant for nutrition
       / dm,ge,nr /

  npk(nutrients) plant nutrients
   /nr,p,k/

  cgf residue production functions
   /slope, intercept, bg_to_ag/

***Emissions ***

   emis_source emission sources
   / inorg_fert, man_crop, awms, resid, man_past, som,
     rice, ent_ferm,
     resid_burn,
     crop_vegc, crop_litc, crop_soilc,
     past_vegc, past_litc, past_soilc,
     forestry_vegc, forestry_litc, forestry_soilc,
     primforest_vegc, primforest_litc, primforest_soilc,
secdforest_vegc, secdforest_litc, secdforest_soilc,     urban_vegc, urban_litc, urban_soilc,
     other_vegc, other_litc, other_soilc,
     beccs/

   emis_source_reg(emis_source) regional emission sources
   / inorg_fert, man_crop, awms, resid, man_past, som,
     rice, ent_ferm, beccs /

   emis_source_cell(emis_source) celllular emission sources
   / crop_vegc, crop_litc, crop_soilc,
     past_vegc, past_litc, past_soilc,
     forestry_vegc, forestry_litc, forestry_soilc,
     primforest_vegc, primforest_litc, primforest_soilc,
secdforest_vegc, secdforest_litc, secdforest_soilc,     urban_vegc, urban_litc, urban_soilc,
     other_vegc, other_litc, other_soilc /

   emis_co2(emis_source_cell) land pool CO2 emission sources
   / crop_vegc, crop_litc, crop_soilc,
     past_vegc, past_litc, past_soilc,
     forestry_vegc, forestry_litc, forestry_soilc,
     primforest_vegc, primforest_litc, primforest_soilc,
secdforest_vegc, secdforest_litc, secdforest_soilc,     urban_vegc, urban_litc, urban_soilc,
     other_vegc, other_litc, other_soilc /

   co2_forestry(emis_source_cell) forestry land CO2 emission sources
   /forestry_vegc, forestry_litc, forestry_soilc/

   c_pools carbon pools
   /vegc,litc,soilc/

***TECHNICAL STUFF***
   type type of output / level, marginal, upper, lower /

***RELATIONSHIPS BETWEEN DIFFERENT SETS***

  emis_land(emis_co2,land,c_pools)
  /crop_vegc        . (crop) . (vegc)
   crop_litc        . (crop) . (litc)
   crop_soilc       . (crop) . (soilc)
   past_vegc        . (past) . (vegc)
   past_litc        . (past) . (litc)
   past_soilc       . (past) . (soilc)
   forestry_vegc    . (forestry) . (vegc)
   forestry_litc    . (forestry) . (litc)
   forestry_soilc   . (forestry) . (soilc)
   primforest_vegc  . (primforest) . (vegc)
   primforest_litc  . (primforest) . (litc)
   primforest_soilc . (primforest) . (soilc)
   secdforest_vegc  . (secdforest) . (vegc)
   secdforest_litc  . (secdforest) . (litc)
   secdforest_soilc . (secdforest) . (soilc)
   urban_vegc       . (urban) . (vegc)
   urban_litc       . (urban) . (litc)
   urban_soilc      . (urban) . (soilc)
   other_vegc       . (other) . (vegc)
   other_litc       . (other) . (litc)
   other_soilc      . (other) . (soilc)
   /

   emis_co2_to_forestry(co2_forestry,c_pools)
  /forestry_vegc    . (vegc)
   forestry_litc    . (litc)
   forestry_soilc   . (soilc)
   /

;

*** EOF sets.gms ***
