FROM python:2.7-alpine
MAINTAINER "KikePuma thanx2 SagiKazarMark"

ARG SQLMAP_VERSION=1.1.3

RUN set -xe\
    && mkdir -p /sqlmap \
    && apk add --no-cache --virtual .build-deps openssl tar \
    && wget https://github.com/sqlmapproject/sqlmap/archive/$SQLMAP_VERSION.tar.gz -O /tmp/sqlmap.tar.gz \
    && tar xfz /tmp/sqlmap.tar.gz --strip-components=1 -C /sqlmap \
    && apk del .build-deps \
    && rm -rf /tmp/sqlmap.tar.gz

WORKDIR /sqlmap
VOLUME /var/sqlmap

CMD ["-h"]
ENTRYPOINT ["./sqlmap.py", "--output-dir=/var/sqlmap"]
