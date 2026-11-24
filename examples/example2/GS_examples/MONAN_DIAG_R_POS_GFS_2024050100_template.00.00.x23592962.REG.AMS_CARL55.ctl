dset ^MONAN_DIAG_R_POS_GFS_2024050100_%y4%m2%d2%h2.00.00.x23592962.REG.AMS_CARL55.grib2
index ^MONAN_DIAG_R_POS_GFS_2024050100_template.x23592962.REG.AMS_CARL55.grib2.idx
undef 9.999E+20
title MONAN_DIAG_R_POS_GFS_2024050100_2024050106.00.00.x23592962.REG.AMS_CARL55.grib2
* produced by g2ctl v0.0.8.2
* command line options: MONAN_DIAG_R_POS_GFS_2024050100_2024050106.00.00.x23592962.REG.AMS_CARL55.grib2
* griddef=1:0:(1801 x 2121):grid_template=0:winds(N/S): lat-lon grid:(1801 x 2121) units 1e-06 input WE:NS output WE:SN res 48 lat 42.000000 to -64.000000 by 0.050000 lon 254.000000 to 344.000000 by 0.050000 #points=3819921:winds(N/S)

options template
dtype grib2
ydef 2121 linear -64.000000 0.05
xdef 1801 linear 254.000000 0.050000
tdef 5 linear 00Z01may2024 6hr
* PROFILE hPa
zdef 18 levels 100000 92500 85000 77500 70000 50000 40000 30000 25000 20000 15000 10000 7000 5000 3000 2000 1000 300
options pascals
vars 27
ACPCPsfc   0,1,0   0,1,10,1 ** surface Convective Precipitation [kg/m^2]
CAPEsfc   0,1,0   0,7,6 ** surface Convective Available Potential Energy [J/kg]
CINsfc   0,1,0   0,7,7 ** surface Convective Inhibition [J/kg]
DSWRFsfc   0,1,0   0,4,7,1 ** surface Downward Short-Wave Radiation Flux [W/m^2]
DZDTprs    18,100  0,2,9 ** (1000 925 850 775 700.. 50 30 20 10 3) Vertical Velocity (Geometric) [m/s]
HGTsfc   0,1,0   0,3,5 ** surface Geopotential Height [gpm]
HGTprs    18,100  0,3,5 ** (1000 925 850 775 700.. 50 30 20 10 3) Geopotential Height [gpm]
LANDsfc   0,1,0   2,0,0 ** surface Land Cover (0=sea, 1=land) [Proportion]
LHTFLsfc   0,1,0   0,0,10 ** surface Latent Heat Net Flux [W/m^2]
NCPCPsfc   0,1,0   0,1,9,1 ** surface Large-Scale Precipitation (non-convective) [kg/m^2]
PRESsfc   0,1,0   0,3,0 ** surface Pressure [Pa]
PRMSLmsl   0,101,0   0,3,1 ** mean sea level Pressure Reduced to MSL [Pa]
PWATl0   0,0,0   0,1,3 ** reserved Precipitable Water [kg/m^2]
RHprs    18,100  0,1,1 ** (1000 925 850 775 700.. 50 30 20 10 3) Relative Humidity [%]
SHTFLsfc   0,1,0   0,0,11 ** surface Sensible Heat Net Flux [W/m^2]
SPFHprs    18,100  0,1,0 ** (1000 925 850 775 700.. 50 30 20 10 3) Specific Humidity [kg/kg]
SPFH2m   0,103,2   0,1,0 ** 2 m above ground Specific Humidity [kg/kg]
TCDCsfc   0,1,0   0,6,1 ** surface Total Cloud Cover [%]
TMPprs    18,100  0,0,0 ** (1000 925 850 775 700.. 50 30 20 10 3) Temperature [K]
TMP2m   0,103,2   0,0,0 ** 2 m above ground Temperature [K]
UGRDprs    18,100  0,2,2 ** (1000 925 850 775 700.. 50 30 20 10 3) U-Component of Wind [m/s]
UGRD10m   0,103,10   0,2,2 ** 10 m above ground U-Component of Wind [m/s]
ULWRFsfc   0,1,0   0,5,4,1 ** surface Upward Long-Wave Rad. Flux [W/m^2]
ULWRFtoa   0,8,0   0,5,4,1 ** top of atmosphere Upward Long-Wave Rad. Flux [W/m^2]
VGRDprs    18,100  0,2,3 ** (1000 925 850 775 700.. 50 30 20 10 3) V-Component of Wind [m/s]
VGRD10m   0,103,10   0,2,3 ** 10 m above ground V-Component of Wind [m/s]
VVELprs    18,100  0,2,8 ** (1000 925 850 775 700.. 50 30 20 10 3) Vertical Velocity (Pressure) [Pa/s]
ENDVARS
