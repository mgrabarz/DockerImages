#!/bin/ash

echo ${BASE64_ACCOUNT_PEM} | base64 -d > /etc/cloudflared/cert.pem
exec /etc/cloudflared/cloudflared tunnel --hostname ${DEST_URL} --hello-world