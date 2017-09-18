FROM debian:buster

LABEL maintainer="Itadakimas"

RUN apt-get update -y && \
    apt-get install -y apache2

RUN a2enmod proxy proxy_http

COPY ./entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]