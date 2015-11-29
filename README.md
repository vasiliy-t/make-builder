# make-builder

This repo is a source for leanlabs/make-builder docker image.
This image is primarily intended for use on CI server to build software artifact with Make and docker builder containers.

Make builder includes GNU Make 4.1.

Make builder includes docker 1.9.1 binary (under /usr/bin/docker path), so there is no need to mount docker binary from host, the only files must be mounted is docker.pid and docker.sock.

### Usage

Assuming that:

1. Your are running next command from project root dir

2. There is a Makefile in project root dir

3. There is a "build" target defined in Makefile

```bash
docker run --rm \
    -v `pwd`:`pwd` \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/run/docker.pid:/var/run/docker.pid \
    -w `pwd` \
    leanlabs/make-builder build
```
