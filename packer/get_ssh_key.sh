#!/bin/sh

cd /home/vagrant
mkdir .ssh
cd .ssh
curl https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub > authorized_keys

cd /home/vagrant
chown -Rv vagrant.vagrant .ssh
chmod 0711 .ssh
chmod 0600 .ssh/authorized_keys
