# MPAS_NC2GRIB2 - special compilation instructions
==========

## 1) - compilation in the EGEON environment at egeon.cptec.inpe.br
 -----------
  ### a) ECCODES compilation

 ### b) Environment variables

	export NFDIR=/opt/ohpc/pub/libs/gnu9/openmpi4/netcdf-fortran/4.5.3 

  ### c)MPAS_NC2GRIB2 compilation    

    module load netcdf-fortran
    module load libaec-1.0.5-gcc-9.4.0-4qmyxr4 (optional)
    ln -s makefile_config_egeon makefile_config
    make


 ## 2) - compilation in JACI environment at jaci.cptec.inpe.br
 ---------
  ### a) ECCODES compilation
        module load gcc-native/13.2
        module load cray-netcdf-hdf5parallel/4.9.0.15
        module load libfabric
        mkdir -p build
        cd build
        export PREFIX=<path to local of ECCODES instalation>
        cmake -DENABLE_JPG=ON -DENABLE_PNG=ON -DCMAKE_INSTALL_PREFIX=$PREFIX ../source

 ### b) Environment variables and options 

        export NFDIR=${NETCDF_DIR}
        export ECCODES_DIR=<path to local of ECCODES instalation>
        export ECCODES_DEFINITION_PATH=<path to local of ECCODES deffinitions>

  ### c) MPAS_NC2GRIB2 compilation
        module load cray-netcdf-hdf5parallel/4.9.0.15
        ln -sf makefile_config_jaci makefile_config
        make clean
        make
      
