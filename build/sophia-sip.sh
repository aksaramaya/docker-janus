#!/bin/bash
cd /tmp;
wget -t 10 -c http://nchc.dl.sourceforge.net/project/sofia-sip/sofia-sip/1.12.11/sofia-sip-1.12.11.tar.gz; \
tar vxf sofia-sip-1.12.11.tar.gz; \
rm sofia-sip-1.12.11.tar.gz; \
cd sofia-sip-1.12.11; \
./configure --prefix=/usr; \
make; \
make install; \
cd /tmp; \
rm -rf sofia-sip-1.12.11;
