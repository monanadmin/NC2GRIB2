#!/bin/bash
#-----------------------------------------------------------------
# Download MONAN data sample in nc to convert to grib2
#
#----------------------------------------------------------------


SCRIPT=`realpath $0` 
RUNDIR=`dirname $SCRIPT`
cd $RUNDIR

#-------------------------------
# trying to get data from ftp1
#-------------------------------

mkdir -p ../datain
cd ../datain

#-------------------------------
# trying to get data from ftp1
#-------------------------------

wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/global/MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/global/MONAN_DIAG_G_POS_GFS_2026082800_2026082806.00.00.x5898242L55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/global/MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/global/MONAN_DIAG_G_POS_GFS_2026082800_2026082818.00.00.x5898242L55.nc
wget -nc ftp1.cptec.inpe.br/avalia/avalia/samples/monan/global/MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.nc
# Option -nc : no clobber


#------------------------------------------------
# trying to get data from dropbox (Alternative)
#----------------------------------------------

wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/qofh2eww2f8v7i0quxdb6/MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.nc?rlkey=rfd219caqb0xhvlqahhyji41x&st=qao0p5hh&dl=1" 
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082806.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/akq8634uucsxqyw6l0thl/MONAN_DIAG_G_POS_GFS_2026082800_2026082806.00.00.x5898242L55.nc?rlkey=r6mucceyxd59iizx63bgx33df&st=8idvj53d&dl=1"
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/o2bx927lhscdcjc7f4en6/MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.nc?rlkey=gln3kgil2rvtzec6zp70aeh0q&st=qsfbb6nq&dl=1"
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082818.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/jjrxrvtamr3ogddmh7iz5/MONAN_DIAG_G_POS_GFS_2026082800_2026082818.00.00.x5898242L55.nc?rlkey=oxpah8vvr6bnw1ag3z6dpqzw6&st=65rb1scp&dl=1"
wget -nc -O ./MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.nc "https://www.dropbox.com/scl/fi/hdupz7eirrq4nwapo25gu/MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.nc?rlkey=aa7b4qw83j4a3wdd00pnwbc6m&st=i83sxmrm&dl=1"




