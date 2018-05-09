# caddy

Alpine-based caddy image. Currently includes docker, http.ipfilter, http.realip, and tls.dns.dnsmadeeasy plugins and uses the personal license.

* Pulls latest caddy version during image build
* Serves from */caddydir/* by default
* Sources */precmd* before executing caddy

Usage examples:

```
docker run -it --rm dhylton/caddy -version

docker run -d -v /website/files:/caddydir -p 2015:2015 dhylton/caddy

docker run -d -v /my/caddyfile:/caddydir/Caddyfile -v cmdlist.sh:/precmd -p 80:80 dhylton/caddy
```
