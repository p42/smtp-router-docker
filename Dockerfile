FROM project42/syslog-alpine:3.7
MAINTAINER Jordan Clark jordan.clark@esu10.org

RUN apk add --no-cache exim exim-sqlite exim-scripts sqlite bash

COPY container-files /

ENTRYPOINT ["/init"]

EXPOSE 25 445 587
