#!/bin/sh

# Install Rmpi
wget -nv https://cran.r-project.org/src/contrib/Rmpi_0.6-9.1.tar.gz -P /tmp_setup/
R CMD INSTALL /tmp_setup/Rmpi_0.6-9.1.tar.gz --configure-args="--with-Rmpi-include=/usr/include/openmpi-x86_64 --with-Rmpi-libpath=/usr/lib64/openmpi/lib --with-Rmpi-type=OPENMPI"

