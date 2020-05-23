FROM    alpine:latest

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION=1.0
ARG FFMPEG_VERSION=4.2
ARG SERVIIO_VERSION=2.1

LABEL   org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.name="DLNA Serviio Container" \
        org.label-schema.description="DLNA Serviio Container" \
        org.label-schema.url="https://sndsolutions.com/" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.vcs-url="https://github.com/sndsolutions/serviio" \
        org.label-schema.vendor="SnD Solutions" \
        org.label-schema.version=$VERSION \
        org.label-schema.schema-version="1.0" \
        maintainer="SnD Solutions Fitch <fitch@outlook.be>"

EXPOSE 1900/udp
EXPOSE 8895/tcp
# HTTP/1.1 /console /rest
EXPOSE 23423/tcp 
# HTTPS/1.1 /console /rest
EXPOSE 23523/tcp
# HTTP/1.1 /cds /mediabrowser
EXPOSE 23424/tcp
# HTTPS/1.1 /cds /mediabrowser
EXPOSE 23524/tcp
