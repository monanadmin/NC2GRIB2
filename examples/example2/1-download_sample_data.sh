#!/bin/bash
#-----------------------------------------------------------------
# Download MONAN data sample in nc to convert to grib2
#
#----------------------------------------------------------------


SCRIPT=`realpath $0` 
RUNDIR=`dirname $SCRIPT`
cd $RUNDIR

#-------------------------------
# trying to get data from ftp1
#-------------------------------

mkdir -p ../datain
cd ../datain

#-------------------------------
# trying to get data from ftp1
#-------------------------------

wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/regional/MONAN_DIAG_R_POS_GFS_2024050100_2024050100.00.00.x23592962.REG.AMS_CARL55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/regional/MONAN_DIAG_R_POS_GFS_2024050100_2024050106.00.00.x23592962.REG.AMS_CARL55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/regional/MONAN_DIAG_R_POS_GFS_2024050100_2024050112.00.00.x23592962.REG.AMS_CARL55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/regional/MONAN_DIAG_R_POS_GFS_2024050100_2024050118.00.00.x23592962.REG.AMS_CARL55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/regional/MONAN_DIAG_R_POS_GFS_2024050100_2024050200.00.00.x23592962.REG.AMS_CARL55.nc
# Option -nc : no clobber


#-----------------------------------------------
# trying to get data from dropbox (alternative )
#-----------------------------------------------

wget -nc -O ./MONAN_DIAG_R_POS_GFS_2024050100_2024050100.00.00.x23592962.REG.AMS_CARL55.nc "https://www.dropbox.com/scl/fi/kqhi32q9xjjwsl0lbv0b6/MONAN_DIAG_R_POS_GFS_2024050100_2024050100.00.00.x23592962.REG.AMS_CARL55.nc?rlkey=4mnscuwup5x78rvs8obfmorvc&st=c7pqp48y&dl=1"
wget -nc -O ./MONAN_DIAG_R_POS_GFS_2024050100_2024050106.00.00.x23592962.REG.AMS_CARL55.nc "https://www.dropbox.com/scl/fi/say6fbgy5b6tqwkdu7xop/MONAN_DIAG_R_POS_GFS_2024050100_2024050106.00.00.x23592962.REG.AMS_CARL55.nc?rlkey=fs6t9bergkf2tzue74uswcton&st=c2xzvv1g&dl=1"
wget -nc -O ./MONAN_DIAG_R_POS_GFS_2024050100_2024050112.00.00.x23592962.REG.AMS_CARL55.nc "https://www.dropbox.com/scl/fi/m5iulv9i7sbynu7u0ia4c/MONAN_DIAG_R_POS_GFS_2024050100_2024050112.00.00.x23592962.REG.AMS_CARL55.nc?rlkey=7ifld883zgngm9clc2qz5mjvg&st=vd4uujz3&dl=1"
wget -nc -O ./MONAN_DIAG_R_POS_GFS_2024050100_2024050118.00.00.x23592962.REG.AMS_CARL55.nc "https://www.dropbox.com/scl/fi/j00cwokhkvbx8fulp4a6l/MONAN_DIAG_R_POS_GFS_2024050100_2024050118.00.00.x23592962.REG.AMS_CARL55.nc?rlkey=2yz3dztu5zx8ocodjm02z0f7a&st=54lxwz6b&dl=1"
wget -nc -O ./MONAN_DIAG_R_POS_GFS_2024050100_2024050200.00.00.x23592962.REG.AMS_CARL55.nc "https://www.dropbox.com/scl/fi/808t3vgsz1ugr3q4zwu57/MONAN_DIAG_R_POS_GFS_2024050100_2024050200.00.00.x23592962.REG.AMS_CARL55.nc?rlkey=nird2brl2w9j60xqq4tjti0p3&st=4cqvpvd9&dl=1"





