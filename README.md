# Docker image for haggar

[![Docker Stars](https://img.shields.io/docker/stars/_/ubuntu.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mashape/kong.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)
[![Docker Build Status](https://img.shields.io/docker/build/jrottenberg/ffmpeg.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/jumanjiman/puppet.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/_/httpd.svg?style=plastic)](https://hub.docker.com/r/egaillardon/haggar/)

haggar : an experimental carbon load testing tool - https://github.com/gorsuch/haggar

```
docker run -it --rm egaillardon/haggar

Usage of haggar:
  -agents int
    	max number of agents to run concurrently (default 100)
  -cache_connections
    	if set, keep connections open between flushes (default: false)
  -carbon string
    	address of carbon host (default "localhost:2003")
  -flush-interval duration
    	how often to flush metrics (default 10s)
  -jitter duration
    	max amount of jitter to introduce in between agent launches (default 10s)
  -metrics int
    	number of metrics for each agent to hold (default 10000)
  -prefix string
    	prefix for metrics (default "haggar")
  -spawn-interval duration
    	how often to gen new agents (default 10s)
```

Example adding the graphite host to the container's `/etc/hosts` file :

`docker run  -it --rm --add-host=graphite:192.168.1.24 egaillardon/haggar -carbon "graphite:2003"`
