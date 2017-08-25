FROM debian

ARG VERSION="1.1"
ARG BUILD_DATE="26-August-2017"

LABEL maintainer="KikePuma" \
	org.schema-version="${VERSION}" \
	org.label-schema.name="KikePuma" \
	org.label-schema.vendor="CosasDePuma" \
	org.label-schema.description="Minergate Container" \
	org.label-schema.version="${VERSION}" \
	org.label-schema.url="https://github.com/CosasDePuma/PearlTheWhale" \
	org.label-schema.build-date="${BUILD_DATE}" \
	org.label-schema.docker.cmd="docker run -it --name minergate cosasdepuma/minergate"

RUN apt-get update && \
    apt-get install -y ca-certificates wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://minergate.com/download/deb-cli && \
    dpkg -i deb-cli
    
ENV USER adventurespumas@gmail.com
ENV COIN -bcn

ENTRYPOINT minergate-cli -user $USER $COIN
