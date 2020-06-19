#!/bin/sh

sslh --transparent -f -u root --listen $LISTEN_IP:$LISTEN_PORT \
   --ssh $SSH_HOST:$SSH_PORT \
   --tls $HTTPS_HOST:$HTTPS_PORT \
   $@
