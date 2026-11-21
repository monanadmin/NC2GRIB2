#!/bin/bash
#---------------------------------------------------------------------------------------

# Pourpose:
# The porpose of this script is to demostrate that is not possible the
# direct conversion from  netcdf to grib2 using cdo
#
#  The main aspect
#  1) GRIB2 is a format under WMO governance. it mean that all regulation described
#     in WMO documentation must be observed. It includes identification of variables
#     and all regulation associated in each case
#
#  2) On the other hand netcdf, format it self don't have a strong regulation and name of
#     variables and the meaning of this name are local defined by generetor of the information
#     In that way the direct convertion from netcdf 2 grib2 may times are not possible, or enventualy
#     are done without correct metada
#
#  Run this script and check the results your self
#  May ERRORS or/any worning will be present demostrating the problems of the direct conversion
#
#  Using MPAS_N2GRIB2 avoids these problems and provides a more
#  comprehensive approach to the conversion process.
#--------------------------------------------------------------------------------------
# (c) 2026 Sergio Ferrira (sergioh.pessoal@gmail.com or sergio.ferreira@inpe.br)
#--------------------------------------------------------------------------------------
# History
#--------------------------------------------------------------------------------------

cdo -f grb2 copy ../../datain/MONAN_DIAG_G_POS_GFS_2026082800_2026082806.00.00.x5898242L55.nc ./MONAN_DIAG_G_POS_GFS_2026082800_2026082806.x5898242L55.nc.grb2
