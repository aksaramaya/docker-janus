#!/bin/bash
cd /tmp
git clone https://github.com/alanxz/rabbitmq-c
cd rabbitmq-c
git submodule init
git submodule update
autoreconf -i
./configure --prefix=/usr && make && sudo make install
cd /tmp
rm -rf rabbitmq-c;
