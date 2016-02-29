FROM busybox:glibc

RUN mkdir -p /lib/x86_64-linux-gnu/
RUN mkdir -p /usr/lib/x86_64-linux-gnu/
RUN mkdir -p /lib64/
RUN mkdir -p /usr/bin/

ADD bin/libdl.so.2 /lib/x86_64-linux-gnu/
ADD bin/librt.so.1 /lib/x86_64-linux-gnu/
ADD bin/libstdc++.so.6 /usr/lib/x86_64-linux-gnu/
ADD bin/libm.so.6 /lib/x86_64-linux-gnu/
ADD bin/libgcc_s.so.1 /lib/x86_64-linux-gnu/
ADD bin/libpthread.so.0 /lib/x86_64-linux-gnu/
ADD bin/libc.so.6 /lib/x86_64-linux-gnu/
ADD bin/ld-linux-x86-64.so.2 /lib64/
ADD bin/node /usr/bin/

CMD node
