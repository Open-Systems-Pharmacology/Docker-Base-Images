#!/bin/sh

# Install Rmpi
wget -nv https://cran.r-project.org/src/contrib/Rmpi_0.6-9.1.tar.gz -P /tmp_setup/
R CMD INSTALL /tmp_setup/Rmpi_0.6-9.1.tar.gz --configure-args="--with-Rmpi-include=/usr/lib/x86_64-linux-gnu/openmpi/include --with-Rmpi-libpath=/usr/lib/x86_64-linux-gnu/openmpi/lib --with-Rmpi-type=OPENMPI"

