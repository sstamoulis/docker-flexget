#!/bin/bash
docker run --rm -it \
 -e PUID=111 -e PGID=117 \
 -v /mnt/data/config/flexget/config:/config \
 -v /mnt/data/config/flexget/results:/results \
 flexget /bin/bash