#!/bin/bash

#
# Setup base gns3
#

add-apt-repository -y ppa:gns3/ppa
apt-get update
apt-get install -y gns3-gui

#
# Setup docker support
#

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   edge"

apt-get install -y docker-ce

groups="ubridge libvirt kvm wireshark"

groupadd wireshark 
groupadd libvirt

for g in $groups
do
    # groupadd $g
    usermod -a -G $g vagrant
done