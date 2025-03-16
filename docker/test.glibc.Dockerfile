FROM docker.io/python:3-slim

COPY --from=docker.io/php:8-bookworm /usr/local/lib/libphp.so /usr/local/lib/

RUN apt update
# https://github.com/docker-library/php/blob/bf4834b575da91a56db7bd76e3b28362a2869272/8.4/bookworm/fpm/Dockerfile#L104-L114
RUN apt install -y --no-install-recommends \
        libargon2-dev \
        libcurl4-openssl-dev \
        libonig-dev \
        libreadline-dev \
        libsodium-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        zlib1g-dev \
        ;
