# docker-shadowsocks

Docker image for [shadowsocks](https://github.com/shadowsocks/shadowsocks) based on [alpine](https://alpinelinux.org/) linux.

### Quick Start

```
git clone https://github.com/hughshen/docker-shadowsocks docker-ss && cd docker-ss
docker build -t local/ss .
docker run --name local-ss -d -p 443:8388 local/ss -s 0.0.0.0 -p 8388 -k 123456 -m aes-256-cfb
# OR
docker run --name local-ss -d --restart=always -e TZ='Asia/Shanghai' -p 443:8388 -p 443:8388/udp local/ss -s 0.0.0.0 -p 8388 -k 123456 -m aes-256-cfb
```
