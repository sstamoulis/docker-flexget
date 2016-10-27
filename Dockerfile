FROM lsiobase/alpine

# install runtime packages
RUN \
 apk add --no-cache \
	ca-certificates \
	py-pip \
	python && \

# add pip packages
 pip install --no-cache-dir -U \
	pip && \
 LIBRARY_PATH=/lib:/usr/lib \
 pip install --no-cache-dir -U \
	setuptools

# install runtime packages
RUN pip install --no-cache-dir \
	"flexget>2.5.3" || \
	pip install --no-cache-dir \
	"flask-login>=0.3.2,<0.4.0" \
	"flexget<=2.5.3"
RUN mkdir -p /config && \
	ln -s /config /root/.flexget

# add local files
COPY root/ /

# ports and volumes
VOLUME /config /results
