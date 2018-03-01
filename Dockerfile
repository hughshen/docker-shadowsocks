FROM alpine

RUN apk add --no-cache \
    python \
    py-pip \
    && pip install --upgrade pip \
    && pip install setuptools \
    && pip install shadowsocks \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*

ENTRYPOINT ["ssserver"]