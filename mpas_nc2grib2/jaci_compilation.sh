#!/bin/bash
# Compilation of ECCODES na Jaci
#-------------------------------

module load gcc-native/13.2
module load cray-netcdf-hdf5parallel/4.9.0.15
module load libfabric
module load PrgEnv-gnu/8.6.0
#module load eccodes/2.40.0S
ln -sf makefile_config_jaci makefile_config
make
