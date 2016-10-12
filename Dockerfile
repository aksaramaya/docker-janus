FROM aksaramaya/base
MAINTAINER ibnu yahya <anak10thn@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C
ENV BUILDDIR="/tmp"

RUN cd /tmp; \
    apk update; \
    apk add openssl gcc make libmicrohttpd-dev jansson-dev libnice-dev \
    openssl-dev glib-dev g++ cmake libffi-dev openssl-dev git linux-headers \
    opus-dev libogg-dev pkgconfig gengetopt libtool autoconf automake;

COPY build/libsrtp.sh $BUILDDIR
RUN $BUILDDIR/libsrtp.sh

COPY build/usrsctp.sh $BUILDDIR
RUN $BUILDDIR/usrsctp.sh

COPY build/libwebsockets.sh $BUILDDIR
RUN $BUILDDIR/libwebsockets.sh

COPY build/rabbitmq-c.sh $BUILDDIR
RUN $BUILDDIR/rabbitmq-c.sh

COPY build/build.sh $BUILDDIR
RUN $BUILDDIR/build.sh

RUN apk del gcc make g++ cmake linux-headers \
    pkgconfig gengetopt libtool autoconf automake;

ENTRYPOINT ["/opt/janus/bin/janus"]
