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

cdo -f nc copy ../dataout/MONAN_DIAG_G_POS_GFS_2026082800_2026082806.x5898242L55.grib2 ./MONAN_DIAG_G_POS_GFS_2026082800_2026082806.x5898242L55.grib2.nc
