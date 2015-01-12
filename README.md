## Node.js Dockerfile


This repository is used to build Node.js Docker images. It is used by the [Docker automated build service](https://registry.hub.docker.com/u/inclusivedesign/nodejs/).


### Base Docker Image

* [inclusivedesign/centos:7](https://registry.hub.docker.com/u/inclusivedesign/centos/)


### Download

    docker pull inclusivedesign/nodejs

#### Run `node`

    docker run -it --rm inclusivedesign/nodejs node

#### Run `npm`

    docker run -it --rm inclusivedesign/nodejs npm ...
