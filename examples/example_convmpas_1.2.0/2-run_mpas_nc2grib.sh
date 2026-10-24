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

dirin=./datain
dirout=./dataout
mkdir -p $dirout
resolution='x5898242L55'
fileout=$dirout/MONAN_DIAG_G_POS_GFS_%Y4%M2%D2%H2_%y4%m2%d2%h2.$resolution

start_time=2026082800
for f in $(seq 0 3 24 ) ;do
    fff=$(printf "%03d\n" $f )
    source ./get_date.sh ${start_time}${fff}
    forecast_time=$yy2$mm2$dd2$hh2
    filein=$dirin/MONAN_DIAG_G_POS_GFS_${start_time}_${forecast_time}.00.00.$resolution.nc
    date
    echo $NC2GRIB_DIR'/bin/mpas_nc2grib2.x -i '$filein' -o '$fileout' -s '$start_time' -f '$fff' -v 2'
    $NC2GRIB_DIR/bin/mpas_nc2grib2.x -i $filein -o $fileout -s $start_time -f $fff -v 2  -C '../../settings/nc2grib.2.v1.4.1-rc.xml'
done
date
