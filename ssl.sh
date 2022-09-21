#!/bin/sh
if ! test -f /etc/letsencrypt/live/diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d "$1"
else
    certbot certonly --standalone --force-renew -d "$1"
fi

if ! test -f /etc/letsencrypt/live/traefik.diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d "$2"
else
    certbot certonly --standalone --force-renew -d "$2"
fi

if ! test -f /etc/letsencrypt/live/notagar.diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d "$3"
else
    certbot certonly --standalone  --force-renew -d "$3"
fi
