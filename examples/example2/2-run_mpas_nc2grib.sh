#!/bin/bash
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
    module load gcc-native/13.2
    module load cray-netcdf-hdf5parallel/4.9.0.15
    module load libfabric
    module load PrgEnv-gnu/8.6.0
    module load eccodes/2.34.0
    export NFDIR=${NETCDF_DIR}
    export NC2GRIB_DIR=../..
else
	export NC2GRIB_DIR=../..
fi

dirin=../datain
dirout=./dataout
mkdir -p $dirout
resolution='x5898242L55'
fileout=$dirout/MONAN_DIAG_R_POS_GFS_%Y4%M2%D2%H2_%y4%m2%d2%h2.00.00.x23592962.REG.AMS_CARL55

start_time=2024050100
for f in $(seq 0 6 24 ) ;do
    fff=$(printf "%03d\n" $f )
    source ./get_date.sh ${start_time}${fff}
    forecast_time=$yy2$mm2$dd2$hh2
    filein=$dirin/MONAN_DIAG_R_POS_GFS_${start_time}_${forecast_time}.00.00.x23592962.REG.AMS_CARL55.nc
    date
    $NC2GRIB_DIR/bin/mpas_nc2grib2.x -i $filein -o $fileout -s $start_time -f $fff -v 3  -C '../../settings/nc2grib2-v2.5-MONAN-v1.4.1-rc.xml'
done
date
