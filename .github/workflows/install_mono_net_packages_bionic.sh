#!/bin/sh

# Install dotnet-sdk-3.1
apt-get -y update && \
apt-get -y install software-properties-common && \
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
apt-add-repository -y https://packages.microsoft.com/ubuntu/18.04/prod && \
apt-get -y install dotnet-sdk-3.1 && \
dotnet --version

# Install git, nuget and libraries
apt-get -y install git nuget libcurl4-openssl-dev libssl-dev libxml2-dev openmpi-bin openmpi-common libopenmpi-dev wget

# Install mono
apt-get -y install gnupg ca-certificates && \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic/snapshots/5.18 main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
apt-get -y update && \
apt-get -y install mono-complete

# add missing locale
locale-gen en_US.UTF-8
