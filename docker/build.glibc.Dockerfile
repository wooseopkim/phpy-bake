FROM docker.io/php:8-bookworm AS build

RUN apt update
RUN apt install -y --no-install-recommends \
    # https://github.com/swoole/phpy/blob/85c43cf/docs/en/python/build.md#compilation-dependencies
    python3-dev git cmake \
    ;
