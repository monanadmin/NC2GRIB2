#!/bin/bash
#----------------------------------------------------------------------------------------
# Description:
# script to generate ctl and idx files for visualisation with Grads
#
#-----------------------------------------------------------------------------------------
a=`hostname`
echo $a
if [[ $a == *"egeon"* ]]; then
	module load cdo-2.0.4-gcc-9.4.0-bjulvnd
	module load netcdf-fortran
	export NFDIR=/opt/ohpc/pub/libs/gnu9/openmpi4/netcdf-fortran/4.5.3
	export NC2GRIB_DIR=../..
elif [[ $a == *"ian"* ]]; then
    module swap PrgEnv-cray/8.6.0 PrgEnv-gnu
    module load cray-netcdf/4.9.0.15
    #module load cray-netcdf-hdf5parallel/4.9.0.15
    module load grads
    module load cdo2
    module load wgrib2
    module list
    module load libfabric
    export NFDIR=${NETCDF_DIR}
    export NC2GRIB_DIR=../..
else
	export NC2GRIB_DIR=../..
fi
cd  ../dataout

# Generating  ctl and idx from grib2 files
for dh in  2806  ; do
    g2ctl MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}.x5898242L55.grib2 >  ./MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}00.x5898242L55.grib2.ctl
    gribmap -i MONAN_DIAG_G_POS_GFS_2026082800_202608${dh}00.x5898242L55.grib2.ctl
done

# using predefined ctl to generate idx - Template from initial time to 024 h forecast
cp ../GS_examples/MONAN_DIAG_G_POS_GFS_2026082800_template.x5898242L55.grib2.ctl .
gribmap -i ./MONAN_DIAG_G_POS_GFS_2026082800_template.x5898242L55.grib2.ctl
echo '-------------------------------------------------------------------------------'
echo 'Return to ../dataout directory to see the results'
echo 'use grads -lc "open <name of ctl file>  to open the results with Grads software"'
echo 'Done'
echo '--------------------------------------------------------------------------------'
