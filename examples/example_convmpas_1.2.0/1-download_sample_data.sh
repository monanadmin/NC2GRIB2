#!/bin/bash
#-----------------------------------------------------------------
# Download MONAN data to convert from NETCDF to grib2
#
# Note:
# the original NETCDF files with all forecast times were divided
# into files with a single forecast time using CDO
#----------------------------------------------------------------


SCRIPT=`realpath $0` 
RUNDIR=`dirname $SCRIPT`
cd $RUNDIR

mkdir -p ./datain
cd ./datain
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/qofh2eww2f8v7i0quxdb6/MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.nc?rlkey=rfd219caqb0xhvlqahhyji41x&st=qao0p5hh&dl=1" 
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/o2bx927lhscdcjc7f4en6/MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.nc?rlkey=gln3kgil2rvtzec6zp70aeh0q&st=qsfbb6nq&dl=1"
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/hdupz7eirrq4nwapo25gu/MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.nc?rlkey=aa7b4qw83j4a3wdd00pnwbc6m&st=i83sxmrm&dl=1"
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082912.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/9x527gt4i05u2y5g4jqv0/MONAN_DIAG_G_POS_GFS_2026082800_2026082912.00.00.x5898242L55.nc?rlkey=9yzcezsc8fuz225sc674hyosx&st=70j94gw2&dl=1"
# Option -nc : no clobber (sem sobreescrever)


