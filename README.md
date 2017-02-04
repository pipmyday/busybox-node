# Pipmyday/busybox-node

A minimum-footprint node.js Docker base image built with busybox.

[![](https://badge.imagelayers.io/pipmyday/busybox-node:latest.svg)](https://imagelayers.io/?images=pipmyday/busybox-node:latest 'Get your own badge on imagelayers.io')

## Available tags

* `7.5.0`, `latest` [7.5.0/Dockerfile](https://github.com/pipmyday/busybox-node/blob/v7.5.0/Dockerfile)
* `6.9.5`
* `5.7.0` [5.7.0/Dockerfile](https://github.com/pipmyday/busybox-node/blob/v5.7.0/Dockerfile)

## Build

Run `bash build.sh` while in this directory. The build was run on Ubuntu/Yakkety64 using the busybox-glibc image. The binaries needed for node.js 7.5.0 are determined by running `whereis` and `ldd` and are copied into `./shared-libs/`. Finally, a `docker build` is done using the `NODE_VERSION`.

----

©2017 by Polyban.io

Other respective licenses https://busybox.net/license.html and https://github.com/nodejs/node/blob/v7.5.0/LICENSE
