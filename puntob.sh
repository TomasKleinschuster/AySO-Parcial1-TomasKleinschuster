#!/bin/bash
sudo fdisk /dev/sdc << EOF
n
p


+2.5G
n
p


+2.5G
n
p


+2.5G
n
p



w
EOF
sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
cd /home/vagrant/parcial1
mkdir mnt 
sudo mount /dev/sdc1 /home/vagrant/parcial1/mnt
sudo mount /dev/sdc2 /home/vagrant/parcial1/mnt
sudo mount /dev/sdc3 /home/vagrant/parcial1/mnt
sudo lsblk -f
