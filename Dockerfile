FROM busybox:glibc

MAINTAINER "Jakob Hohlfeld" jhohlfeld@polyban.io

ENV NODE_VERSION=5.7.0

ADD ./shared-libs /

CMD node
