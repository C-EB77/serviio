# docker-serviio

[![](http://serviio.org/images/serviio.png)](http://serviio.org/) 

[![](https://images.microbadger.com/badges/image/sndsolutions/serviio.svg)](https://microbadger.com/images/sndsolutions/serviio) [![Docker Pulls](https://img.shields.io/docker/pulls/sndsolutions/serviio.svg)](https://hub.docker.com/r/sndsolutions/serviio/) [![Docker Stars](https://img.shields.io/docker/stars/sndsolutions/serviio.svg)](https://hub.docker.com/r/sndsolutions/serviio/) [![GitHub last commit](https://img.shields.io/github/last-commit/sndsolutions/serviio.svg)](https://github.com/sndsolutions/serviio) [![Docker Build Status](https://img.shields.io/docker/build/sndsolutions/serviio.svg)](https://hub.docker.com/r/sndsolutions/serviio/)
  
Link on docker hub: [sndsolutions/serviio](https://hub.docker.com/r/sndsolutions/serviio/)

Link on github: [sndsolutions/docker-serviio](https://github.com/sndsolutions/docker-serviio)

### Build Args

 - **BUILD_DATE**       = date -u +\"%Y-%m-%dT%H:%M:%SZ\"
 - **VCS_REF**          = git rev-parse --short
 - **VERSION**          = 2.1 - docker version
 - **SERVIIO_VERSION**  = 2.1 - serviio version
 - **FFMPEG_VERSION**   = 4.1

### Exposed Ports

 - **1900:1900/udp**
 - **8895:8895/tcp**
 - **23423:23423/tcp** - HTTP/1.1 /console /rest
 - **23523:23523/tcp** - HTTPS/1.1 /console /rest
 - **23424:23424/tcp** - HTTP/1.1 /cds /mediabrowser
 - **23524:23524/tcp** - HTTPS/1.1 /cds /mediabrowser

### Volumes
 - **/opt/serviio/config**
 - **/opt/serviio/library**
 - **/opt/serviio/plugins** - plugins folder
 - **/opt/serviio/log**     - log folder
 - **/tmp**                 - transcode folder
 - **/media/serviio**       - put media content here and add in serviio gui this path


### Container Changelog (dd.mm.yy)
 - **27.05.2020** - Added Serviio v2.1 and alpine v3.10.

### Using
 - **Step 1:**   In Unraid add the Url https://github.com/sndsolutions/serviio/blob/master/serviio.xml in the "Template repositories" in the docker section.
 - **Step 2:**   Add a container and select serviio as template.
 - **Step 3:**   Add new Path with your host path and the desired container path.
                 example: container path: /media/movies, host path: /mnt/user/movies, access mode: read only.
 - **Step 4:**   Laucnh the web UI of serviio and add a shared folder with the path of your container path created above.
                 example: media type: video, folder: /media/movies, display name: Movies.
