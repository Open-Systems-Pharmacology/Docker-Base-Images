#!/bin/sh

# Install mono
rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" && \
yum update -y && \
yum-config-manager --add-repo http://repo1.xorcom.com/repos/mono-project/mono-project/ && \
yum install -y mono-complete-0:5.18.0.240-0.xamarin.2.epel7.x86_64

# Install nuget, dotnet-sdk-3.1, and msbuild
yum install -y libxml2-devel git nuget openmpi-devel wget && \
rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm && \
yum install -y https://packages.microsoft.com/centos/7/prod/netstandard-targeting-pack-2.1.0-x64.rpm && \
yum install -y dotnet-sdk-3.1
