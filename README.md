sslh
========

[![Docker Pulls](https://img.shields.io/docker/pulls/jpelzer/sslh.svg)](https://hub.docker.com/r/jpelzer/sslh/)

Docker image containing sslh with some configs. Based on alpine image.

Usage
-----

Start and expose 443
```bash
docker run -d -p 443:443 --name sslh jpelzer/sslh
```

Enviroment variables for manipulating container. Names are self explonatory, I hope.
```bash
LISTEN_IP 0.0.0.0
LISTEN_PORT 443

SSH_HOST localhost
SSH_PORT 22

HTTPS_HOST localhost
HTTPS_PORT 443
```

----

Thanks to docker image amondit/sslh for inspiration.
