#!/bin/sh
apt-get clean
apt autoremove --purge
dd if=/dev/zero of=/var/tmp/coco.bin bs=4096k
rm /var/tmp/coco.bin
