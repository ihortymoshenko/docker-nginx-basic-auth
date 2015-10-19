## nginx-basic-auth Dockerfile


This repository contains **Dockerfile** of [nginx](http://nginx.org/)-basic-auth for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-nginx-basic-auth/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [nginxinc/docker-nginx](https://github.com/nginxinc/docker-nginx)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-nginx-basic-auth/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull igortimoshenko/docker-nginx-basic-auth`

   (alternatively, you can build an image from Dockerfile: `docker build -t="igortimoshenko/docker-nginx-basic-auth" github.com/igortimoshenko/docker-nginx-basic-auth`)


### Usage

    docker run -d \
    -p 9200:9200 \
    -e TITLE="Elasticsearch Admin" \
    -e HOST="elasticsearch" \
    -e PORT="9200" \
    -e USER="elasticsearch" \
    -e PASS="elasticsearch" \
    --link elasticsearch:elasticsearch \
    igortimoshenko/docker-nginx-basic-auth
