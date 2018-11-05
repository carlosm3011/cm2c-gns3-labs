FROM bitnami/minideb:latest
RUN apt-get -y update 
# comment out for prod release
RUN apt-get -y install vim-tiny procps
##
WORKDIR /root
ADD librtr0_0.6.1.0_amd64.deb /root/librtr0_0.6.1.0_amd64.deb
RUN dpkg -i librtr0_0.6.1.0_amd64.deb || /bin/true
RUN apt-get -y --fix-broken install
#
ADD frr_6.0RPKI-1.debian9+1_amd64.deb /root/frr_6.0RPKI-1.debian9+1_amd64.deb
RUN dpkg -i frr_6.0RPKI-1.debian9+1_amd64.deb || /bin/true
RUN apt-get -y --fix-broken install
#
ADD daemons /etc/frr/daemons
ADD daemons.conf /etc/frr/daemons.conf
RUN touch /etc/frr/zebra.conf && touch /etc/frr/bgpd.conf
RUN chown -Rv frr.frr /etc/frr
# 
ADD start_frr_rpki.sh /start_frr_rpki.sh
RUN chmod a+x /start_frr_rpki.sh
#
VOLUME ["/etc/"]
ENTRYPOINT ["/start_frr_rpki.sh"]

