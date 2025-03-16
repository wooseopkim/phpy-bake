FROM docker.io/python:3-alpine

RUN apk update
# https://github.com/docker-library/php/blob/bf4834b575da91a56db7bd76e3b28362a2869272/8.4/alpine3.21/zts/Dockerfile#L92-L105
RUN apk add --no-cache --virtual .build-deps \
        argon2-dev \
        coreutils \
        curl-dev \
        gnu-libiconv-dev \
        libsodium-dev \
        libxml2-dev \
        linux-headers \
        oniguruma-dev \
        openssl-dev \
        readline-dev \
        sqlite-dev \
        ;
