FROM debian

MAINTAINER "KikePuma"

RUN apt-get update && \
    apt-get install -y ca-certificates wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://minergate.com/download/deb-cli && \
    dpkg -i deb-cli
    
ENV USER adventurespumas@gmail.com
ENV COIN -bcn

ENTRYPOINT minergate-cli -user $USER $COIN
