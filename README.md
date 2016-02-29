# Pipmyday/node-static

A minimum-footprint node.js 5.7 base image built with busybox.

[![](https://badge.imagelayers.io/pipmyday/node-static:latest.svg)](https://imagelayers.io/?images=pipmyday/node-static:latest 'Get your own badge on imagelayers.io')

## Available tags

* `5.7`, `latest` [5.7/Dockerfile](https://github.com/pipmyday/node-static/blob/master/Dockerfile)

## Build

Run `bash build.sh` while in this directory. The build is meant for Ubuntu/Vivid64 using glibc. The dynamic libraries for node.js 5.7 are copied into `./bin/` and a `docker build` is done.

----

©2016 by Pipmyday