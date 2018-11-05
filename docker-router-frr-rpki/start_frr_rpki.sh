#!/bin/sh

/usr/lib/frr/zebra -d -f /etc/frr/zebra.conf
/usr/lib/frr/bgpd -d -M rpki  -f /etc/frr/bgpd.conf
#/usr/sbin/ospfd -d -f /etc/quagga/ospfd.conf
#/usr/sbin/ospf6d -d -f /etc/quagga/ospf6d.conf
#/usr/sbin/ripd -d -f /etc/quagga/ripd.conf
#/usr/sbin/ripngd -d -f /etc/quagga/ripngd.conf
#/usr/sbin/babeld -d -f /etc/quagga/babeld.conf
#/usr/sbin/isisd -d -f /etc/quagga/isisd.conf

while true 
do
	echo "Entering FRR shell"
	vtysh
done
#/bin/bash
