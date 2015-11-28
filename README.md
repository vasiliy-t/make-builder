# make-builder

### Usage

Assuming that your are running next command in project root dir and there is a Makefile in project root dir.

```bash
docker run --rm -v `pwd`:/data -v /var/run/docker.sock:/var/run/docker.sock -v /var/run/docker.pid:/var/run/docker.pid -v /usr/bin/docker:/usr/bin/docker leanlabs/make-builder build
```
