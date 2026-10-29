#!/bin/bash
a=`hostname`
echo $a
if [[ $a == *"egeon"* ]]; then
	module load cdo-2.0.4-gcc-9.4.0-bjulvnd
	module load netcdf-fortran
	export NFDIR=/opt/ohpc/pub/libs/gnu9/openmpi4/netcdf-fortran/4.5.3
	export NC2GRIB_DIR=../..
elif [[ $a == *"ian"* ]]; then
    module load cray-netcdf-hdf5parallel/4.9.0.15
    module load libfabric
    export NFDIR=${NETCDF_DIR}
    export NC2GRIB_DIR=../..
else
	export NC2GRIB_DIR=../..
fi

dirout=./dataout


start_time=2026082800
for f in $(seq 0 6 0 ) ;do
    fff=$(printf "%03d\n" $f )
    source ./get_date.sh ${start_time}${fff}
    forecast_time=$yy2$mm2$dd2$hh2
    filegr=$dirout/MONAN_DIAG_G_POS_GFS_${start_time}_${forecast_time}.x5898242L55.grib2
    filegrams=$dirout/MONAN_DIAG_G_POS_GFS_${start_time}_${forecast_time}.ams.x5898242L55.grib2
    #cdo sellonlatbox,lon1,lon2,lat1,lat2 input.nc output.nc
    ls -ltr $filegr
    cdo sellonlatbox,-100,0,-90,10 $filegr $filegrams

done
