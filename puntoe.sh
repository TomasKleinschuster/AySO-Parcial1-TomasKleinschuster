#!/bin/bash
grep -i memtotal /proc/meminfo > /home/vagrant/parcial1/filtro_basico.txt
sudo dmidecode -t chassis | grep -iE 'chassis|manufacture' >> /home/vagrant/parcial1/filtro_basico.txt
