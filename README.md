# Pipmyday/busybox-node

A minimum-footprint node.js 5.7.0 base image built with busybox.

[![](https://badge.imagelayers.io/pipmyday/busybox-node:latest.svg)](https://imagelayers.io/?images=pipmyday/busybox-node:latest 'Get your own badge on imagelayers.io')

## Available tags

* `5.7.0`, `latest` [5.7.0/Dockerfile](https://github.com/pipmyday/busybox-node/blob/v5.7.0/Dockerfile)

## Build

Run `bash build.sh` while in this directory. The build was run on Ubuntu/Wily64 using the busybox-glibc image. The binaries needed for node.js 5.7.0 are determined by running `whereis` and `ldd` and are copied into `./shared-libs/`. Finally, a `docker build` is done using the `NODE_VERSION`.

----

©2016 by Pipmyday

Other respective licenses https://busybox.net/license.html and https://github.com/nodejs/node/blob/v5.7.0/LICENSE
