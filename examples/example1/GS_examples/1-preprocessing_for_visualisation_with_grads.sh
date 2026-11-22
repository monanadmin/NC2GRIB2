#!/bin/bash
#----------------------------------------------------------------------------------------
# Description:
# script to generate ctl and idx files for visualisation with Grads
#
#-----------------------------------------------------------------------------------------
cp g2ctl ../dataout
cd  ../dataout

# Generating  ctl and idx from grib2 files
for dh in  2806  ; do
    g2ctl MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}.x5898242L55.grib2 >  ./MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}00.x5898242L55.grib2.ctl
    gribmap -i MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}00.x5898242L55.grib2.ctl
done

# using predefined ctl to generate idx
cp ../GS_examples/MONAN_DIAG_G_POS_GFS_2026082800_template.x5898242L55.grib2.ctl .
gribmap -i ./MONAN_DIAG_G_POS_GFS_2026082800_template.x5898242L55.grib2.ctl
