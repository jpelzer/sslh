#!/bin/sh

sslh --foreground --numeric -u root \
   --listen $LISTEN_IP:$LISTEN_PORT \
   --tls $HTTPS_HOST:$HTTPS_PORT \
   --anyprot $SSH_HOST:$SSH_PORT \
   $@
