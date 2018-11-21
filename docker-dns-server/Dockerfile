FROM alpine:latest

FROM alpine
RUN apk update
# RUN apk add lighttpd lynx
RUN apk add bind bind-tools nano
ADD start_host.sh /start_host.sh
# ADD index.html /var/www/localhost/htdocs
RUN chmod a+x /start_host.sh
# RUN chown -Rv lighttpd /var/www
VOLUME ["/etc/"]
ENTRYPOINT ["/start_host.sh"]
