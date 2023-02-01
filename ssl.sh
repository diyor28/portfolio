#!/bin/sh
if ! test -f /etc/letsencrypt/live/diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d diyor28.com
else
    certbot certonly --standalone --force-renew -d diyor28.com
fi

if ! test -f /etc/letsencrypt/live/traefik.diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d traefik.diyor28.com
else
    certbot certonly --standalone --force-renew -d traefik.diyor28.com
fi

if ! test -f /etc/letsencrypt/live/notagar.diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d notagar.diyor28.com
else
    certbot certonly --standalone --force-renew -d notagar.diyor28.com
fi

if ! test -f /etc/letsencrypt/live/rm.diyor28.com/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email diyor28july@gmail.com --standalone --preferred-challenges http -d rm.diyor28.com
else
    certbot certonly --standalone --force-renew -d rm.diyor28.com
fi
