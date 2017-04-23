FROM ubuntu:14.04
#MAINTAINER "KikePuma"

ARG VERSION="Ubuntu 1.0"
ARG BUILD_DATE="23-April-2017"

LABEL maintainer="KikePuma" \
	org.schema-version="1.0" \
	org.label-schema.name="KikePuma" \
	org.label-schema.vendor="Cosas de Puma" \
	org.label-schema.description="SEToolKit Container" \
	org.label-schema.version="${VERSION}" \
	org.label-schema.url="https://github.com/CosasDePuma/PearlTheWhale" \
	org.label-schema.build-date="${BUILD_DATE}" \
	org.label-schema.docker.cmd="docker run --rm -it -p 80:80 -p 3000:3000 --volume $HOME:/sharedfolder --volume $HOME/.set:/root/.set --name set cosasdepuma/setoolkit"

RUN apt-get update && \
	apt-get install -qqy --no-install-recommends software-properties-common && \
	add-apt-repository ppa:fkrull/deadsnakes && \
	apt-get update && \
	apt-get --force-yes -y --no-install-recommends install git apache2 python-requests libapache2-mod-php5 \
		python-pymssql build-essential python-pexpect python-pefile python-crypto python-openssl && \
	apt-get install -qqy --no-install-recommends python-pip && \	
	git clone https://github.com/trustedsec/social-engineer-toolkit/ /set/ -v && \
	pip install pexpect pycrypto pyopenssl pefile && \
	cd /set && python setup.py install && \
	apt-get purge -y git software-properties-common && \
	apt-get autoremove -y && mkdir /sharedfolder

EXPOSE 80 3000

ENTRYPOINT ["/bin/bash"]

CMD ["setoolkit"]
