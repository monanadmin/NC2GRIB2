#!/bin/bash
# Compilation of ECCODES na Jaci
#-------------------------------
# Example:
# module load gcc-native/13.2
# module load cray-netcdf-hdf5parallel/4.9.0.15
# mkdir -p build
# cd build
# export PREFIX=/p/projetos/gtc/julio.fernandez/LIBS/local
# cmake -DENABLE_JPG=ON -DENABLE_PNG=ON -DCMAKE_INSTALL_PREFIX=$PREFIX ../source

module load cray-netcdf-hdf5parallel/4.9.0.15
ln -sf makefile_config_jaci_test makefile_config
# export ECCODES_DIR=/p/projetos/gtc/julio.fernandez/LIBS/local
make clean
make
#----------------------
#NFDIR=${NETCDF_DIR}
# Opcoes de compiladores
#F90=ftn  -f free
