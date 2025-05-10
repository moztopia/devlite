FROM mariadb:latest

# Install additional utilities if needed (optional)
RUN apt-get update && apt-get install -y \
    tzdata && \
    echo "Asia/Bangkok" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

CMD ["mariadbd"]
