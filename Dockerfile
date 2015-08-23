FROM alpine:3.2
MAINTAINER Wyatt Pan <wppurking@gmail.com>

RUN set -x \
 && cat /etc/apk/repositories | sed -e 's,alpine/.*/main,alpine/edge/testing,g' >> /etc/apk/repositories \
 && apk add --update \
        ca-certificates \
        gettext \
        libintl \
        openssl \
        stunnel \
 && apk del --purge gettext \
 && mkdir -p /var/run/stunnel /var/log/stunnel \
 && mv -v /etc/stunnel/stunnel.conf /etc/stunnel/stunnel.conf.original

EXPOSE 443
CMD ["stunnel"]



