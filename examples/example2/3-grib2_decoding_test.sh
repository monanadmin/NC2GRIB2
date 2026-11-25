#!/bin/bash
#----------------------------------------------------------------------------------------
# Description:
# script to test the decodification of grib2 coded on previous step
# This script using eccodes grib_dump to peform this test  ( Same version used in compilation )
#
# Note:
# Open the correspond txt file in dataout dircetory to verify all decodification details
#-----------------------------------------------------------------------------------------
#export ECCODES_DIR=~/eccodes
echo $ECCODES_DIR
$ECCODES_DIR/bin/codes_info
GRIBDUMP=${ECCODES_DIR}/bin/grib_dump
for dh in 0100 0106 0112 0118 0200 ; do
    $GRIBDUMP ./dataout/MONAN_DIAG_R_POS_GFS_2024050100_202405${dh}.00.00.x23592962.REG.AMS_CARL55.grib2 >  ./dataout/MONAN_DIAG_R_POS_GFS_2024050100_202405${dh}.00.00.x23592962.REG.AMS_CARL55.txt
done
