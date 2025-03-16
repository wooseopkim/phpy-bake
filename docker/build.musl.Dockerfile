FROM docker.io/php:8-zts-alpine AS build

RUN apk add --no-cache --virtual .build-deps \
    # https://github.com/swoole/phpy/blob/85c43cf/docs/en/python/build.md#compilation-dependencies
    python3-dev git cmake \
    # https://wiki.alpinelinux.org/wiki/GCC
    build-base \
    ;
