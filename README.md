# MPAS_NC2GRIB2 ( Version 2.5)

This software reads MONAN data files in netcdf format and writes them into FM92-GRIB2 

## 1-Compilation Instructions

To compile MPAS_NC2GRIB on linux, it is necessary to previously install of **ECCODES** and **netcdf-fotran** libraries.  To use the **grid_ccsds packing type** to produce more compressed grib be sure that ECCODES was compiled with the option -DENABLE_AEC=ON (Adaptive Entropy Coding library). The  **libaec** must be istalled or/and loaded.  The latest version of ECCODES available can be download from ECCODES relases page at https://confluence.ecmwf.int/display/ECC/Releases

### 1.1 - Compilation in a linux desktop  
 To compile in a linux desktop with gfortran 

	 ln -s makefile_config_lnx makefile_config
	 make 

To use other fortran compilers or other compiler options, edit makefile_config_lnx 

For informations about compilation in the supercomputer environments of INPE/CPTEC,  see "special compilation instructions" or click [ here ](https://github.com/GCC-DIMNT-CPTEC/tools/blob/develop/mpas_nc2grib2/special_compilation_instructions.md)

### 1.2 - Notes about version 2.5

The present version is prepared to be compiled with  ECCODES lib version 2.34.0 The Product Definition Templates number acepted by this version are 
   0 - 
   8 -  


## 2 - Setting environment variables

Before run MPAS_NC2GRIB2 It is necessay set **ECCODES_DIR** , **ECCODES_DEFINITION_PATH** and **NFDIR** environments variables.  

### 2.1 ECCODES_DIR
Set ECCODES_DIR with path where ECCODES software is. This definition is necessary  to software find the grib definitions tables used in coding / decoding process. As example, in case bash terminal  edit the .bashrc file and add the follow commnad.


	export ECCODES_DIR=/home/User_name/eccodes

**Note:** *The eccodes directory usualy contains the follow directories: bin, include, lib, share. The "share" is the directories where the grib definitions tables are.* 

### 2.2 NFDIR
Set the NFDIR with the path where  NETCDF-FORTRAN is.  As examples:
1) In usual instalation add in .bashrc environmet variable the commnad
   
		export NFDIR=/usr/local

        
### 2.3 NC2GRIB_DIR
Set the NC2GRIB_DIR with the path where mpas_nc2grib directory is. It is necessary to software find specific configuration in the  mpas_nc2grib2/settings directory.
Example

		export NC2GRIB_DIR=/home/User_name/mpas_nc2grib2

# 3 - Checking if MPAS_NC2GRIB2 was sucessifully compiled
 Type the follow commnad

		./bin/mpas_nc2grib2.x


# 4 - Running the examples for test

mpas_nc2grib2.x suport some different compression options during grib2 codification. The followed examples are desined to present those possibilities, as well as, use of the software on diferents platforms, like PC linux environmet, the supercomputer envenronment of INPE/CPTEC (Jaci), etc.

## 4.1 - example1 - Basic  example
The pourpose of this example is check if the MPAS_NC2GRIB2 was correctly installed and running in the system.  The software is used with defult configurations:

   a) **Compressiong configurations:**  grib simple packed  type associated with bit-per-value compression strategy, in acoordance with WMO regulation (____) 

   b) 
   
   "examples/example1" and run the followed scripts:

 - 1-download_sample_data.sh: This script download a set off MPAS_MONAN NETCDF file places them in **../datain** 
 	- Type **ls -ltr ../datain** to verify if the files were download.

-  2-running mpas_nc2grib.x: Use the followed scripts to run mpas_nc2grib.x:

	2-run_mpas_nc2grib2.sh (with grid simple packing type and default compression)
	

The scripts runs MPAS_NC2GRIB to convert the MPAS_FILE in datain to GRIB2 file in dataout.  

		MONAN_DIAG_G_POS_GFS_2026082800_2026082800.00.00.x5898242L55.grib2
		MONAN_DIAG_G_POS_GFS_2026082800_2026082806.00.00.x5898242L55.grib2
		MONAN_DIAG_G_POS_GFS_2026082800_2026082812.00.00.x5898242L55.grib2
		MONAN_DIAG_G_POS_GFS_2026082800_2026082818.00.00.x5898242L55.grib2
		MONAN_DIAG_G_POS_GFS_2026082800_2026082900.00.00.x5898242L55.grib2
		
  - Type **ls -ltr ./dataout** to verify if the grib files were generated 
  - 3-grib_decoding_test.sh: This script do the inverse process, i.e. decoding the grib2 file into txt file using ECCODES GRIB_DUMP 

  - 4 Optional scripts are included in this example in the followed directories
     a) GS_examples :  Contais examples of scripts  to pre-processing grib2 data to be open with Grads Software to plotting maps
	 b) CDO_examples :  Contais examples how to use CDO tools to process some tests,  conversions and domain selections

   
   




## 5 - USER GUIDE ##

For more details see UserGuide.md or click on : [user guide](https://github.com/GCC-DIMNT-CPTEC/tools/blob/develop/mpas_nc2grib2/UserGuide.md)
