FROM certbot/certbot:v1.27.0 as cert-bot
COPY ssl.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["diyor28.com", "traefik.diyor28.com", "notagar.diyor28.com"]
