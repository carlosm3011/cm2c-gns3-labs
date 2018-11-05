FROM ajones17/frr:latest

RUN apk update
# RUN apk add quagga
RUN    touch /etc/frr/ospfd.conf && \
       touch /etc/frr/bgpd.conf && \
	touch /etc/frr/ospf6d.conf && \
	touch /etc/frr/ospfd.conf && \
	touch /etc/frr/vtysh.conf && \
	touch /etc/frr/zebra.conf 

# Fix <END> screen with vtysh
RUN echo "export VTYSH_PAGER=more" >>  /etc/bash.bashrc
RUN echo "VTYSH_PAGER=more" >> /etc/environment
# RUN chown -R quagga /etc/quagga
RUN rm /etc/frr/daemons && rm /etc/frr/daemons.conf
ADD daemons /etc/frr/daemons
ADD daemons.conf /etc/frr/daemons.conf
RUN chown -Rv frr.frr /etc/frr/* 
RUN chown frr.frr /etc/frr
ADD start_frr.sh /start_frr.sh
RUN chmod a+x start_frr.sh
VOLUME ["/etc/"]
ENTRYPOINT ["/start_frr.sh"]
