FROM busybox:glibc

MAINTAINER "Jakob Hohlfeld" jhohlfeld@polyban.io

ENV NODE_VERSION=7.5.0

ADD ./shared-libs /

CMD node
