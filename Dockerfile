FROM alpine:3.7

RUN apk add --no-cache bash curl \
    && curl https://getcaddy.com \
       | bash -s personal docker,http.ipfilter,http.realip,tls.dns.dnsmadeeasy \
    && printf > /entrypoint.sh '#!/bin/sh\ntest -f /precmd && . /precmd\nexec caddy $@\n' \
    && chmod +x /entrypoint.sh \
    && mkdir -p /caddydir

WORKDIR /caddydir

EXPOSE 80 443 2015

ENTRYPOINT ["/entrypoint.sh"]
