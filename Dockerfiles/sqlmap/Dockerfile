FROM python:2.7-alpine

ARG VERSION="1.0"
ARG BUILD_DATE="26-August-2017"

LABEL maintainer="KikePuma" \
	org.schema-version="${VERSION}" \
	org.label-schema.name="KikePuma" \
	org.label-schema.vendor="CosasDePuma" \
	org.label-schema.description="SQLMap Container" \
	org.label-schema.version="${VERSION}" \
	org.label-schema.url="https://github.com/CosasDePuma/PearlTheWhale" \
	org.label-schema.build-date="${BUILD_DATE}" \
	org.label-schema.docker.cmd="docker run -it --name sqlmap cosasdepuma/sqlmap"

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
