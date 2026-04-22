#!/bin/bash
module load PrgEnv-cray
module load cray-netcdf-hdf5parallel/4.9.0.15
ln -sf makefile_config_jaci makefile_config
make
