#   _________________________________________
#  X                                         X
# |                                           |
# |    forensics() {                          |
# |      docker run --rm --tty                |
# |          --interactive                    |
# |          --volume /dev:/ext               |
# |          --volume $PWD:/out               |
# |          --name forensics                 |
# |          cosasdepuma/forensics $@         |
# |    }                                      |
# |                                           |
#  X_________________________________________X

FROM alpine

MAINTAINER Kike Puma (@CosasDePuma) <kikefontanlorenzo@gmail.com>

RUN apk add --no-cache python2
RUN apk add --no-cache file testdisk volatility
RUN apk add --no-cache --virtual .foremost git build-base py2-pip && \
	pip install distorm3 && \
	git clone "https://github.com/korczis/foremost" && cd foremost && \
	make && make install && cd .. && \
	rm -r foremost && apk del .foremost

RUN rm -r /etc/apk /sbin/apk

CMD ["/bin/ash"]

# TODO: Alpine foremost repo
# https://git.alpinelinux.org/aports/tree/community/volatility/APKBUILD
