FROMM phusion/baseimage:0.9.15
MAINTAINER Wyatt Pan <wppurking@gmail.com>

RUN apt-get update && apt-get install -y stunnel

EXPOSE 443
ENTRYPOINT ["stunnel"]
CMD []



