make-builder
============

Usage
-----

Assuming that your project at /data/project and there is a Makefile in project root directory with build target.

```bash
docker run --rm -v /data:/data -w /data/project -v /var/run/docker.sock:/var/run/docker.sock -v /var/run/docker.pid:/var/run/docker.pid -v /usr/bin/docker:/usr/bin/docker leanlabs/make-builder build
```
