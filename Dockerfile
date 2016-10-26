FROM lsiobase/alpine.python

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install runtime packages
RUN mkdir /config && \
	ln -s /config /root/.flexget && \
	pip install --no-cache-dir -U flexget

# add local files
COPY root/ /

# ports and volumes
VOLUME /config
