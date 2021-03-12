FROM nginx:latest
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN apt install -y certbot python3-certbot-nginx &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "entrypoint.sh" ]
