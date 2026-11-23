#!/bin/bash
#---------------------------------------------------------------------------------------
# This is a simple example how grib2 cam be converted back to netcdc format using cdo
#
# Pourpose:
# The porpose of this script is to demostrate that:
#  1) The variables names are converted from grib2 using the CDO convensions.
#     (*Those name are also different from the orinal netcdf files*)
#  2) The size of netcdf file are usualy larger than original grib2 format
#
#  Run this script and check the results your self comparing output files here with thouse in ../dataout
#
#--------------------------------------------------------------------------------------
# (c) 2026 Sergio Ferrira (sergioh.pessoal@gmail.com or sergio.ferreira@inpe.br)
#--------------------------------------------------------------------------------------
# History
#--------------------------------------------------------------------------------------
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
    export NFDIR=${NETCDF_DIR}
    export NC2GRIB_DIR=../..
else
	export NC2GRIB_DIR=../..
fi
cdo -f nc copy ../dataout/MONAN_DIAG_G_POS_GFS_2026082800_2026082806.x5898242L55.grib2 ./MONAN_DIAG_G_POS_GFS_2026082800_2026082806.x5898242L55.grib2.nc
