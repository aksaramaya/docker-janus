#!/bin/bash
cd /tmp;
git clone https://github.com/sctplab/usrsctp; \
cd usrsctp; \
./bootstrap; \
./configure --prefix=/usr && make && sudo make install;
cd /tmp;
rm -rf usrsctp;
