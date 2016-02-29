#!/bin/bash

mkdir -p ./bin

cp /lib/x86_64-linux-gnu/libdl.so.2 \
    /lib/x86_64-linux-gnu/librt.so.1 \
    /usr/lib/x86_64-linux-gnu/libstdc++.so.6 \
    /lib/x86_64-linux-gnu/libm.so.6 \
    /lib/x86_64-linux-gnu/libgcc_s.so.1 \
    /lib/x86_64-linux-gnu/libpthread.so.0 \
    /lib/x86_64-linux-gnu/libc.so.6 \
    /lib64/ld-linux-x86-64.so.2 \
    /usr/bin/node ./bin/

docker build -t pipmyday/node-static:latest .
