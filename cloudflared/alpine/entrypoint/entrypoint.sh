#!/bin/sh

echo ${BASE64_ACCOUNT_PEM} | base64 -d > /etc/cloudflared/cert.pem
exec /usr/sbin/cloudflared/cloudflared tunnel --hostname ${DEST_URL} ${SRC_URL} "$@"