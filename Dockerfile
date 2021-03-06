FROM node:6.9

MAINTAINER  ibuildthehealth

RUN apt-get update && apt-get install -y \
	git	\
	--no-install-recommends

RUN mkdir -p /tmp \
	&& cd /tmp \
	&& git clone https://github.com/easylifewell/sushengyuan \
	&& cd sushengyuan \
	&& npm install

WORKDIR	/node/src/github.com/easylifewell/sushengyuan

COPY  script/entry  /
ENTRYPOINT ["/entry" ]

ADD . /node/src/github.com/easylifewell/sushengyuan
