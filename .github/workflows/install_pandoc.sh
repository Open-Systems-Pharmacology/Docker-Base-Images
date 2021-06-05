#!/bin/sh

# Install pandoc
wget -nv https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-linux-amd64.tar.gz -P /tmp_setup/
mkdir /pandoc && \
cd /pandoc && \
mv /tmp_setup/pandoc-2.9.2.1-linux-amd64.tar.gz /pandoc && \
tar -xzf pandoc-2.9.2.1-linux-amd64.tar.gz && \
rm -f /usr/bin/pandoc && \
ln -s /pandoc/pandoc-2.9.2.1/bin/pandoc /usr/bin/pandoc && \
ls -la /pandoc

