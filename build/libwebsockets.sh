#!/bin/bash
cd /tmp;
git clone git://git.libwebsockets.org/libwebsockets; \
cd libwebsockets; \
mkdir build; \
cd build; \
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-fpic" ..; \
make && sudo make install;
cd /tmp;
rm -rf libwebsockets;
