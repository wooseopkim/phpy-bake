FROM base AS build

WORKDIR /workspace

ARG PHPY_REF
RUN test -n "${PHPY_REF}"
RUN curl -sL "https://github.com/swoole/phpy/archive/${PHPY_REF}.tar.gz" | \
        tar -xz -C . --strip-components=1 

RUN cmake .
RUN make -j"$(nproc)"
