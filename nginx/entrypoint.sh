#!/usr/bin/env bash

mkdir -p /etc/letsencrypt/live/${DOMAIN}
ln -sf /etc/letsencrypt/live/${DOMAIN} /etc/letsencrypt/live/domain

sh -c "/reloader.sh &"
exec "$@"