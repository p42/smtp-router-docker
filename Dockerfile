FROM project42/s6-alpine:3.7
MAINTAINER Jordan Clark jordan.clark@esu10.org

RUN apk add --no-cache exim exim-sqlite sqlite bash

COPY container-files /

ENTRYPOINT ["/init"]
