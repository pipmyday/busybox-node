#!/bin/bash
set -e

NODE_VERSION=$(node --version|cut -c 2-)
SHARED_LIBS_DEST_DIR="./shared-libs"

NODE_BIN=$(whereis node|awk '{print $2}')

if [ $NODE_BIN = "" ]; then echo "node binary not found!" && exit 1; fi

echo "Assembling dynamic libraries needed for node v$NODE_VERSION in $SHARED_LIBS_DEST_DIR"

if [ -d $SHARED_LIBS_DEST_DIR ]; then rm -r $SHARED_LIBS_DEST_DIR; fi

files=$NODE_BIN" "$(ldd $NODE_BIN|grep /|sed -r 's/[^\/]*(\/.+ ).*/\1/g')

for x in $files
do

    destdir="$SHARED_LIBS_DEST_DIR$(dirname $x)/"
    mkdir -p $destdir
    cp -Lr $x $destdir

    echo "copy $x to $destdir"

done

echo "copied "$(find $SHARED_LIBS_DEST_DIR -type f|wc -l)" files."

docker build -t "pipmyday/busybox-node:$NODE_VERSION" .
