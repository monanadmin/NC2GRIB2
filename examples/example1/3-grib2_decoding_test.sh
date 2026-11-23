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
for dh in 2800 2806 2812 2818 2900 ; do
    $GRIBDUMP ./dataout/MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}.x5898242L55.grib2 >  ./dataout/MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}00.x5898242L55.grib2.txt
done
