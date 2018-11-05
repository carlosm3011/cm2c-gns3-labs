FROM alpine:latest

RUN apk update
RUN apk add rsync openjdk8-jre bash
ADD start_rpki_cache.sh /start_rpki_cache.sh
RUN chmod a+x /start_rpki_cache.sh
ADD rpki-validator-app-2.25-dist.tar.gz /
WORKDIR /
#RUN tar xzvf rpki-validator-app-2.25-dist.tar.gz && cd rpki-validator-app-2.25-dist
#RUN chown -Rv lighttpd /var/www
VOLUME ["/etc/"]
ENTRYPOINT ["/start_rpki_cache.sh"]
