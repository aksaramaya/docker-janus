#!/bin/bash
cd /tmp;
git clone https://github.com/meetecho/janus-gateway.git; \
cd janus-gateway; \
./autogen.sh; \
./configure --prefix=/opt/janus --disable-mqtt; \
make; \
make install;
