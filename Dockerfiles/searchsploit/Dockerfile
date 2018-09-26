#   _________________________________________
#  X                                         X
# |                                           |
# |    searchsploit() {                       |
# |      docker run --rm --tty           \    |
# |          --volume $PWD:/Downloads    \    |
# |          --name searchsploit         \    |
# |          cosasdepuma/searsploit $@        |
# |    }                                      |
# |                                           |
#  X_________________________________________X

FROM alpine

ARG VERSION="latest"
ARG BUILD_DATE="22-September-2018"

LABEL maintainer="Kike Fontán (@CosasDePuma)<kikefontanlorenzo@gmail.com>"
LABEL version="${VERSION}"
LABEL build.date="${BUILD_DATE}"
LABEL repository.image = "https://hub.docker.com/r/cosasdepuma/searchsploit"
LABEL repository.dockerfile = "https://www.github.com/cosasdepuma/PearlTheWhale/blob/master/Dockerfiles/searchsploit"
LABEL docker.cmd = "docker run --rm --tty --volume $PWD:/Downloads cosasdepuma/searsploit $@"

RUN apk add --no-cache --clean-protected bash
RUN apk add --no-cache --clean-protected file
RUN apk add --no-cache --clean-protected ncurses
RUN apk add --no-cache --clean-protected --virtual gitinstall git && \
    git clone https://github.com/offensive-security/exploitdb /opt/exploit-database && \
    apk del --no-cache --clean-protected --rdepends gitinstall

WORKDIR /Downloads

ENTRYPOINT [ "/opt/exploit-database/searchsploit" ]
