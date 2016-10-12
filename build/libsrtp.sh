#!/bin/bash
cd /tmp;
wget https://github.com/cisco/libsrtp/archive/v1.5.0.tar.gz; \
tar xfv v1.5.0.tar.gz; \
cd libsrtp-1.5.0; \
./configure --prefix=/usr --enable-openssl; \
make libsrtp.so && sudo make install; \
cd /tmp; \
rm -rf v1.5.0.tar.gz libsrtp-1.5.0;
