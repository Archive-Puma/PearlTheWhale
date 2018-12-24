FROM ubuntu

ARG VERSION="ubuntu"
ARG BUILD_DATE="24-December-2018"

LABEL maintainer="Kike Fontán (@CosasDePuma)<kikefontanlorenzo@gmail.com>"
LABEL version="${VERSION}"
LABEL build.date="${BUILD_DATE}"
LABEL repository.image = "https://hub.docker.com/r/cosasdepuma/circleci"
LABEL repository.dockerfile = "https://www.github.com/cosasdepuma/PearlTheWhale/blob/master/circleci/ubuntu"

USER root
WORKDIR /root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
