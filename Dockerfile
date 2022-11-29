FROM busybox
WORKDIR /app
COPY entrypoint.sh .
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
